
class ThymePluginNotify
  def initialize(thyme, options={})
    @message = options[:message] || 'Thyme is Up'
  end

  # Hooks

  def after(seconds_left)
    `osascript -e 'display notification "#{@message}"'`
  end
end

