# Action:
#	Kill clients by ssh-ing into client machines

export APT=1

if [ $APT -eq 1 ]
then
	for i in `seq 2 110`; do
		ssh -oStrictHostKeyChecking=no ubuntu-183 "cd HERD; ./local-kill.sh" &
	done
else 
	for i in `seq 2 20`; do
		ssh ubuntu-183 "cd HERD; ./local-kill.sh"
	done
fi
