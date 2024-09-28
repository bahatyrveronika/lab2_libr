LIB_DIR="./library"
EXAMPLES_DIR="./examples"

# compile the library
compile_library() {
    echo "Compiling Bzip2 library..."

    # Compile source files to object files
    gcc -Wall -Wextra -fPIC -c "$LIB_DIR"/*.c

    # static and dynamic libraries
    ar rcs "$LIB_DIR/libbz2.a" "$LIB_DIR"/*.o
    gcc -shared -o "$LIB_DIR/libbz2.so" "$LIB_DIR"/*.o

    echo "Library compiled successfully."
}

# Function to compile examples
compile_examples() {
    echo "Compiling examples..."
    make -C "$EXAMPLES_DIR"
    echo "Examples compiled successfully."
}

# Execute functions
compile_library
compile_examples

echo "Project compiled successfully!"
