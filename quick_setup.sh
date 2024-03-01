#!/bin/bash
function addtocrontab() {
	local frequency=$1
	local command=$2
	local job="$frequency $command"

	# List existing cron jobs, exclude the new job if it exists, then append the new job

	cat <(crontab -l | grep -v -F -w "$command") <(echo "$job") | crontab -
}

# Example usage
addtocrontab "12 * * * *" "rsync -aE --delete --exclude '*.cache' --exclude '/.config/Code/CachedData/' --exclude '/home/$USER/snap/' /home/$USER /media/$USER/discoship/discobackup"

cp  ~/.dotfiles/.zshrc ~/.zshrc

for file in `ls -a ~/.dotfiles/`
do
	ln -s /home/$USER/.dotfiles/$file ~/test/$file
done
