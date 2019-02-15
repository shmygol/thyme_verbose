
class ThymePluginMusic
  def initialize(thyme, options={})
    @thyme = thyme
    @player = options[:player] || 'spotify'
    @command_play = options[:command_play] || command_play
    @command_pause = options[:command_pause] || command_pause

    plugin_options = @plugin_options = {:mute => false}
    @thyme.option :m, :mute, 'disalbe music plugin for this Pomodoro' do
      plugin_options[:mute] = true
      @run = true
    end
  end

  # Hooks

  def before
    `#{@command_play}` unless @thyme.break || @plugin_options[:mute]
  end

  def after(seconds_left)
    `#{@command_pause}` unless @thyme.break || @plugin_options[:mute]
  end

  private
  
  def command_play
    command_tpl % {:player => @player, :action => 'Play'}
  end

  def command_pause
    command_tpl % {:player => @player, :action => 'Pause'}
  end

  def command_tpl
    if which('osascript')
      "osascript"\
      " -e 'tell application \"%{player}\"'"\
      " -e '%{action}'"\
      " -e 'end tell'"
    elsif which('dbus-send')
      "dbus-send"\
      " --print-reply"\
      " --dest=org.mpris.MediaPlayer2.%{player}"\
      " /org/mpris/MediaPlayer2"\
      " org.mpris.MediaPlayer2.Player.%{action}"
    else
      raise SystemCallError, "Neither osascript nor dbus-send was found"
    end
  end

  # Cross-platform way of finding an executable in the $PATH.
  def which(cmd)
    exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
    ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
      exts.each { |ext|
        exe = File.join(path, "#{cmd}#{ext}")
        return exe if File.executable?(exe) && !File.directory?(exe)
      }
    end
    return nil
  end
end

