# Thyme Verbose

Is a set of plugins for [thyme pomodoro timer](https://github.com/hughbien/thyme).

## Installation

    $ gem install thyme_verbose

## Usage

Require thyme_verbose in `~/.thymerc` and initialize plugins.

    # ~/.thymerc
    require 'thyme_verbose'
    use ThymePluginTime
    use ThymePluginLabel
    use ThymePluginBell
    use ThymePluginMusic

## Plugins

* ThymePluginTime - print current time before and after each iteration 
* ThymePluginLabel - add a -l / --label option, which defines a custom text to print after each iteration
* ThymePluginBell - make an terminal alarm (beep code) after each iteration 
* ThymePluginMusic - play music during a pomodoro
