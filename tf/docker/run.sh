#!/bin/bash

# building
sudo docker build -t tf .

# Start the Docker service
sudo service docker start

# Run the Docker container
sudo docker run -it --rm --device /dev/dxg -v ../src:/root/src --mount type=bind,src=/usr/lib/wsl,dst=/usr/lib/wsl -e LD_LIBRARY_PATH=/usr/lib/wsl/lib tf bash