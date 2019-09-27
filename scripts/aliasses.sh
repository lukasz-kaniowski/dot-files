export SCRIPTS_DIR="$HOME/Projects/moje/dot-files/scripts"
alias cloudinary="$SCRIPTS_DIR/cloudinary/cloudinary"
function Cw2awslogs() 
{
	pbpaste | sed -E 's/.*group=(.*);filter=(.*);start=(.*);end=(.*)/awslogs get \1 ALL --start="\3" --end="\4" --filter-pattern="\2"/' | pbcopy
}
alias cw2awslogs=Cw2awslogs
alias notifyDone="osascript -e 'display notification \"This shit is done now\" with title \"Done\"'"


