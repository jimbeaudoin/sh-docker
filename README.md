# sh-docker

This shell script install the latest version of the Docker open platform for distributed applications.

It is intended to be used within Debian 7.6.

## Usage
```sh
# Clone repository
git clone https://github.com/jimbeaudoin/sh-docker.git

cd sh-docker

# Making the shell script executable
chmod +x install.sh

# Run the shell script
./install.sh
```

You can test your installation by doing the following command:
```sh
sudo docker version
```