#!/bin/sh

# Get script path
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

# Get Version
VER=$(cat $SCRIPTPATH/../VERSION)
echo "Building image for Facebook Birthday Wisher v$VER..."

# Get Dockerfile path
DOCKERFILE_PATH="$SCRIPTPATH/../.."

# Build image & tag
docker image build \
  --progress=plain \
  --tag fbw:$VER \
  $DOCKERFILE_PATH
docker tag fbw:$VER fbw:latest

# Check if image was built
RESULT=$?
if [ $RESULT -eq 0 ]; then
    echo "Facebook Birthday Wisher v$VER successfully built."
else
  echo "Facebook Birthday Wisher v$VER build failed."
fi