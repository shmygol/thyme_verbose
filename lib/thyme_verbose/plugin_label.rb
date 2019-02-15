
class ThymePluginLabel
  def initialize(thyme, options={})
    plugin_options = @plugin_options = {:label => ''}
    thyme.option :l, 'label str', 'Label' do |str|
      plugin_options[:label] = str
      @run = true
    end
  end

  # Hooks

  def before
    show_label
  end

  def after(seconds_left)
    show_label
  end

  private

  def show_label
    if !@plugin_options[:label].empty?
      caption = 'LABEL: ' + @plugin_options[:label]
      puts caption + ' ' * (50 - caption.length)
    end
  end
end

