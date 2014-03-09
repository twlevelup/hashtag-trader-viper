#### ThoughtWorks LevelUp presents

# #Hashtag Trader

Repository for Melb Level Up #HashTagTrader


## Setup
_note: any commands run on the command line are prefixed with `$ ` - you won't need to include the `$ ` when running the command_

### Prerequisites
1. git
2. Ruby 1.9.3-p545

### Git setup
- For Windows - [Github client](http://windows.github.com/)
- For Mac OS X - [Github client](http://mac.github.com/) or [Homebrew](http://brew.sh/) + `$ brew install git`
- Roll it yourself - [Official git packages](http://git-scm.com/downloads)

### Ruby setup
1. Install [Ruby language & runtime](https://www.ruby-lang.org/en/installation/)
  - If you're on Mac OS X you can use [Homebrew](http://brew.sh/) and [chruby](https://github.com/postmodern/chruby)
  - For windows, [RubyInstaller](http://rubyinstaller.org/downloads/) is probably your best bet
2. Install bundler (Ruby Package manager): `$ gem install bundler`
3. Install gem dependencies `$ bundle install`

### Run the build
1. `$ bundle exec rake`

### Run the app
1. `$ bundle exec rake server`