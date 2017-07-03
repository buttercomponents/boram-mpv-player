# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := boram
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=boram' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_GLIBCXX_USE_CXX11_ABI=0' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I/home/xaiki/.node-gyp/6.11.0/include/node \
	-I/home/xaiki/.node-gyp/6.11.0/src \
	-I/home/xaiki/.node-gyp/6.11.0/deps/uv/include \
	-I/home/xaiki/.node-gyp/6.11.0/deps/v8/include \
	-I$(NACL_SDK_ROOT)/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=boram' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-D_GLIBCXX_USE_CXX11_ABI=0' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I/home/xaiki/.node-gyp/6.11.0/include/node \
	-I/home/xaiki/.node-gyp/6.11.0/src \
	-I/home/xaiki/.node-gyp/6.11.0/deps/uv/include \
	-I/home/xaiki/.node-gyp/6.11.0/deps/v8/include \
	-I$(NACL_SDK_ROOT)/include

OBJS := \
	$(obj).target/$(TARGET)/src/mpv/interop.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64 \
	-static-libstdc++ \
	-L$(NACL_SDK_ROOT)/lib/linux_host/Release

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64 \
	-static-libstdc++ \
	-L$(NACL_SDK_ROOT)/lib/linux_host/Release

LIBS := \
	-lppapi \
	-lppapi_cpp \
	-lppapi_gles2 \
	-lmpv

$(obj).target/boram.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/boram.node: LIBS := $(LIBS)
$(obj).target/boram.node: TOOLSET := $(TOOLSET)
$(obj).target/boram.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/boram.node
# Add target alias
.PHONY: boram
boram: $(builddir)/boram.node

# Copy this to the executable output path.
$(builddir)/boram.node: TOOLSET := $(TOOLSET)
$(builddir)/boram.node: $(obj).target/boram.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/boram.node
# Short alias for building this executable.
.PHONY: boram.node
boram.node: $(obj).target/boram.node $(builddir)/boram.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/boram.node

