require "bridgetown"

module Shared
  class PageRenderer
    attr_reader :site, :collection, :page

    def initialize(controller, collection:, id:)
      path = "/#{collection}/#{id}"
      @site = Bridgetown::Site.new(Bridgetown.configuration)

      if Rails.env.development?
        site.plugin_manager.reload_plugin_files # plugins hang between Rails request, so we need to load them explicitly
      end

      site.controller = controller
      site.defaults_reader.read
      site.layouts = Bridgetown::LayoutReader.new(site).read
      site.data = Bridgetown::DataReader.new(site).read(site.config["data_dir"])

      Bridgetown::Hooks.trigger :site, :pre_read, site
      if collection == :posts
        reader = Bridgetown::Reader.new(site)
        reader.retrieve_posts(site.source)
        @collection = site.posts
      else
        @collection = site.collections[collection]
        @collection.read
      end

      site.generators.find { |generator| generator.is_a?(Bridgetown::Builders::DocumentsGenerator) }&.generate(site)

      @page = @collection.docs.find { |doc| doc.id == path }
    end

    def render_page
      return if page.nil?

      site.layouts[page.data.layout].data.layout = "none"

      Bridgetown::Renderer.new(site, page).run
      if Rails.env.development?
        Bridgetown::Hooks.trigger :site, :pre_reload, site # clear out generators for next time
      end
    end

    def content
      return @content if @content

      render_page

      @content = page&.output&.html_safe
    end
  end
end
