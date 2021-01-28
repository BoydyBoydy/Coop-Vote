#!/bin/bash

echo "Building Server..."
kotlinc server.kt -include-runtime -d server.jar
echo "Building Client..."
kotlinc client.kt -include-runtime -d client.jar
echo "Building Completed"

echo "Running Static Analysis..."
./detekt
