# DirectML-docker-dev-environment
Setting up tf and torch for using with AMD GPU in WSL.

## About

Setting dev environment in docker using DirectML.

## How to use

### tf
1. executing run.sh that builds image and runs dev container.
```bash
# Start the Docker service
sudo service docker start

# building
sudo docker build -t tf .

# Run the Docker container
sudo docker run -it --rm --device /dev/dxg -v ../src:/root/src --mount type=bind,src=/usr/lib/wsl,dst=/usr/lib/wsl -e LD_LIBRARY_PATH=/usr/lib/wsl/lib tf bash
```
2. Attach running dev container to VS code.

## to-do's
- [ ] add working tf example
- [ ] add torch dockerfile
- [ ] add torch testing example