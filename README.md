# Thyme Verbose

Is a set of plugins for [thyme pomodoro timer](https://github.com/hughbien/thyme).

## Installation

    $ gem install thyme_verbose

## Usage

Require thyme_verbose in `~/.thymerc` and initialize plugins.

    # ~/.thymerc
    require 'thyme_verbose'
    use ThymePluginLabel
    use ThymePluginTime

## Plugins

ThymePluginTime - print current time before and after each pomodoro and break 
