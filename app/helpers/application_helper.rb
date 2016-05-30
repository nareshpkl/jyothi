module ApplicationHelper
  def self.my_time
    @my_time = Time.new.strftime("%H:%M:%S")
  end
end
