cmd_Release/obj.target/boram.node := g++ -shared -pthread -rdynamic -m64 -static-libstdc++ -L/usr/lib/nacl/nacl_sdk/pepper_49//lib/linux_host/Release  -Wl,-soname=boram.node -o Release/obj.target/boram.node -Wl,--start-group Release/obj.target/boram/src/interop.o -Wl,--end-group -lppapi -lppapi_cpp -lppapi_gles2 -lmpv
