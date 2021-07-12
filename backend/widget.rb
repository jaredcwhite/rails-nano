class Widget < ActiveRecord::Base
  # name:string

  def display_name
    "#{name} Widget"
  end
end
