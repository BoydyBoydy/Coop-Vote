#!/bin/bash

echo "Building Server..."
kotlinc main/server.kt -include-runtime -d server.jar
echo "Building Client..."
kotlinc main/client.kt -include-runtime -d client.jar
echo "Building Completed"

echo "Running Static Analysis..."
./detekt

echo "Running Style Guide"
ktlint
