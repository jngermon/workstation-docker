echo "Installation of dockerony"

mkdir -p vendor

cd vendor

if [ -d dockerony ]; then
	echo "Dockerony is already installed"
	exit
fi

git clone git@github.com:greg0ire/dockerony.git

