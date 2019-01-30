Gem::Specification.new do |s|
  s.name        = 'thyme_verbose'
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['BSD']
  s.authors     = ['Ilya Shmygol']
  s.email       = ['ishmygol@gmail.com']
  s.homepage    = 'https://github.com/trilliput/thyme_verbose'
  s.summary     = "Set of light plugins for the thyme pomodoro timer"
  s.description = <<-EOF
    Includes fallowing plugins:
    * ThymePluginTime - print current time before and after each iteration
    * ThymePluginLabel - add a -l / --label option, which defines a custom text to print after each iteration
    * ThymePluginBell - make an terminal alarm (beep code) after each iteration)
EOF
 
  s.required_rubygems_version = '>= 1.3.6'
 
  s.files        = Dir.glob('*.md') + Dir.glob('lib/**/*.rb')
end
