LIB_DIR="./library"
EXAMPLES_DIR="./examples"

# compile the library
compile_library() {
    echo "Compiling Bzip2 library..."

    mkdir -p build
    cd build
    rm -rf *
    cmake ..
    make
    cd ..

    echo "Library compiled successfully. The build files have been written to the build/ directory."
}

# Execute functions
compile_library

echo "Project compiled successfully!"
