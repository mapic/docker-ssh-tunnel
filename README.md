# SSH Tunnel for any OS

## Usage
1. Download and install [Docker](https://docs.docker.com/install/) and [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) for your specific platform (Windows, OSX, Linux)
2. Download, build and run:
```bash
# download 
git clone https://github.com/mapic/docker-ssh-tunnel.git

# enter folder
cd docker-ssh-tunnel

# Ensure you copy the vendor SSH keys to the `/keys/` folder before you start. For example:
cp /some/path/ngi-poc-vendor-b-ssh-key.pem docker-ssh-tunnel/keys/
cp /some/path/ngi-poc-vendor-c-ssh-key.pem docker-ssh-tunnel/keys/

# build
./build.sh

# start tunnelling
./up.sh
```


