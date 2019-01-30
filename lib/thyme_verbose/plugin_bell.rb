
class ThymePluginBell
  def initialize(thyme, options={})
  end

  # Hooks

  def after(seconds_left)
    bell
  end

  private

  def bell
    puts "\a"
  end
end
