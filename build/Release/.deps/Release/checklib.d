cmd_Release/checklib := g++ -pthread -rdynamic -m64 -static-libstdc++  -o Release/checklib -Wl,--start-group ./Release/obj.target/checklib/src/checklib.o -Wl,--end-group -ldl
