# fb-birthday-wisher

## Installation
### Docker
The easiest way to avoid individual dependency installs is to use Docker. To make it easy
```
docker pull USER/fbw:latest
```
Then run the container.
```
docker run --expose 4242 --ip 192.168.0.100 --detach --tty fbw:latest
```

## Release
To create a release (image build) of the container use the build scripts.
```
bash docker/build/build_image.sh
```