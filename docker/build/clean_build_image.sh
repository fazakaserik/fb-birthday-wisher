#!/bin/sh

# Get version
ver=$(cat ../VERSION)
echo "Building image for Facebook Birthday Wisher v$ver..."

# Build docker image
docker image build --rm --no-cache --tag fbw:$ver ..

# Check if image was built
RESULT=$?
if [ $RESULT -eq 0 ]; then
    echo "Facebook Birthday Wisher v$ver successfully built."
else
  echo "Facebook Birthday Wisher v$ver build failed."
fi