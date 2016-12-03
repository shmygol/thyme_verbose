
class ThymePluginBeep
  def initialize(thyme, options={})
  end

  # Hooks

  def after(seconds_left)
    beep
  end

  private

  def beep
    puts "\a"
  end
end
