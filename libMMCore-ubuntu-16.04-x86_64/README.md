# .env contents

- *BUILD_DEVICE_ADAPTERS* Leave this unset if you do not want to build the device adapters
- *CCACHE_HOST_DIR* Directory for ccache
- *CXXFLAGS* Compiler flags
- *MM_BASE_DIR* Where to find the common directory holding the micro-manager source and
3rdpartypublic folders 
- *NUM_CORES* The number of cores to compile with: `make -j "$NUM_CORES"
- *UID* The host user and group ids to run the container, e.g. 1000:1000
