class NanoController < ActionController::Base
  def index
    render json: {
      status: "index route",
      hello: "Howdy! I'm Rails, your friendly neighborhood Ruby backend. :)", 
      widget: Widget.first&.display_name,
      boot_time: Shared::Example.boot_time,
      current_time: Time.now
    }
  end

  def show
    render json: {status: "show route", id: params[:id]}
  end
end
