Gem::Specification.new do |s|
  s.name        = 'thyme_verbose'
  s.version     = '0.1.2'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.authors     = ['Ilya Shmygol']
  s.email       = ['ishmygol@gmail.com']
  s.homepage    = 'https://github.com/trilliput/thyme_verbose'
  s.summary     = "Plugins for thyme"
  s.description = <<-EOF
    A set of lightweight plugins for the pomodoro timer 'thyme' aimed to improve verbosity.
    ThymePluginTime for printing current time before and after each iteration; 
    ThymePluginLabel for adding a -l / --label option, which defines a custom text to print after each iteration;
    ThymePluginBell for making an terminal alarm (beep code) after each iteration
    ThymePluginMusic for playing music during a pomodoro
EOF
 
  s.required_rubygems_version = '>= 1.3.6'
 
  s.files        = Dir.glob('*.md') + Dir.glob('lib/**/*.rb')
end
