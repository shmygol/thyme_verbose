
class ThymePluginTime
  def initialize(thyme, options={})
  end

  # Hooks

  def before
    show_time
  end

  def after(seconds_left)
    show_time
  end

  private

  def show_time
    caption = 'TIME: ' + Time.now.to_s
    puts caption + ' ' * (50 - caption.length)
  end
end
