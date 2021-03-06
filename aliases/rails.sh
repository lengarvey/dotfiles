alias be='bundle exec'
alias b='bundle && say bundle complete, mate' # Run bundle and say when it's done

# Rails stuff
alias logs='tail -f -0 ./log/*.log'           # Tails all the Rails logs files
alias migrate='rake db:migrate && rake db:test:prepare && say migration complete' # Migrate the database
alias r='rake'                                # Shortcut to rake

# Rails 3.x.x aliases
alias rs="rails s"                            # Start the Rails server
alias rc="rails c"                            # Start the Rails console# Start the Rails server
alias prc="be pry -r ./config/environment"

alias cap='be cap'
alias rake='be rake'
