# dot-files
Set of my terminal config files

## Setup links

Run ```./setup.sh```

## git config

To setup add this line to your ```~/.gitconfig``` at the top of the file

    [include]
      path = ~/.my_gitconfig

This let's for overrides any of the config entry further down in ```~/.gitconfig```

## Scripts

Add this line to end of a ```~/.profile```

    source $HOME/Projects/moje/dot-files/scripts/aliasses.sh

Some scripts **require installing libraries**. Go to appropriate directory and install it.

In order to setup secret keys => create a ENV variables in a private file in i.e. Dropbox folder and link it into your ```profile```.

    source $HOME/Dropbox/Documents/terminal/private-profile.sh
