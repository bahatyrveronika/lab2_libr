# Specify the directory where the BZ2 header file is located; somehow works on mac os without this, but on Linux it doesn't sooooo
INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR}/../library)

# Specify the sources for the example applications
SET(BZIP2_SOURCES bzip2.c)
SET(BZIP2RECOVER_SOURCES bzip2recover.c)

# Create the bzip2 executable
ADD_EXECUTABLE(bzip2 ${BZIP2_SOURCES})
TARGET_LINK_LIBRARIES(bzip2 bz2)

# Create the bzip2recover executable
ADD_EXECUTABLE(bzip2recover ${BZIP2RECOVER_SOURCES})
TARGET_LINK_LIBRARIES(bzip2recover bz2)
