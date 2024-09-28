# Specify the source files for the library
set(LIBRARY_SOURCES
    blocksort.c
    bzlib.c
    compress.c
    crctable.c
    decompress.c
    huffman.c
    randtable.c
)

# Create the library
add_library(bz2 STATIC ${LIBRARY_SOURCES})

# Optionally set include directories for the library
target_include_directories(bz2 PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
