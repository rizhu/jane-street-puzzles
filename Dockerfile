# Get the base Ubuntu image from Docker Hub
FROM ubuntu:22.04

# Update apps on the base image
RUN apt-get -y update && apt-get install -y

# Install the Clang compiler
RUN apt-get -y install clang

# Install the CMake build system
RUN apt-get -y install cmake

# Install the Boost C++ libraries
RUN apt-get -y install libboost-all-dev

ENV PUZZLE=2022_12

# Copy the current folder which contains C++ source code to the Docker image under /usr/src
COPY puzzles/${PUZZLE}/* /usr/src/jane_street_puzzles/
COPY CMakeLists.txt /usr/src/jane_street_puzzles/

# Specify the working directory
WORKDIR /usr/src/jane_street_puzzles/

# Build the program
RUN cmake .
RUN cmake --build .

# Run the program output from the previous step
CMD ["./puzzle_solution"]
