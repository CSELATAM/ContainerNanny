#!/usr/bin/env bash

# Exit on any error
set -e

# Try to compile all examples
find ./examples -name '*.csproj' -exec dotnet build {} \;

# Build main project
dotnet build

# Execute Unit tests
dotnet test ./tests/Nanny.Common.Tests
dotnet test ./tests/Nanny.Kubernetes.Tests
dotnet test ./tests/Nanny.Queue.Tests
