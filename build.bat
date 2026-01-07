rmdir /q /s build
mkdir build && cd build
cmake .. -G "Unix Makefiles" -DCMAKE_INSTALL_PREFIX=release -DCMAKE_C_FLAGS="-static -static-libgcc" -DCMAKE_CXX_FLAGS="-static -static-libgcc -static-libstdc++" -DCMAKE_SHARED_LINKER_FLAGS="-static -static-libgcc -static-libstdc++" 
make && make install
