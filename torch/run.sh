#!/bin/bash

# Start the Docker service
sudo service docker start

# building
sudo docker build -t torch .

# Run the Docker container
sudo docker run -it --rm --device /dev/dxg -v ./src:/root/src --mount type=bind,src=/usr/lib/wsl,dst=/usr/lib/wsl -e LD_LIBRARY_PATH=/usr/lib/wsl/lib torch bash