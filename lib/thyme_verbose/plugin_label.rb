
class ThymePluginLabel
  def initialize(thyme, options={})
    label = @label = ''
    thyme.option :l, 'label str', 'Label' do |str|
      label.replace str
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
    if !@label.empty?
      caption = 'LABEL: ' + @label
      puts caption + ' ' * (50 - caption.length)
    end
  end
end

