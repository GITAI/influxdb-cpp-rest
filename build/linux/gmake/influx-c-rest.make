# GNU Make project makefile autogenerated by Premake

ifndef config
  config=debug_x32
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild prelink

ifeq ($(config),debug_x32)
  RESCOMP = windres
  TARGETDIR = ../../../bin/linux/gmake/x32/Debug
  TARGET = $(TARGETDIR)/libinflux-c-rest.so
  OBJDIR = ../../../obj/linux/gmake/x32/Debug/influx-c-rest
  DEFINES += -D_GLIBCXX_USE_CXX11_ABI=0 -D_DEBUG -DBUILDING_INFLUX_C_REST
  INCLUDES += -I../../../deps/fmt -I../../../deps/rxcpp/Rx/v2/src/rxcpp -I../../../src/influxdb-cpp-rest -I../../../src/influxdb-c-rest
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -fPIC -g -std=c++14
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -fPIC -g -std=c++14
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/linux/gmake/x32/Debug/libinfluxdb-cpp-rest.a ../../../bin/linux/gmake/x32/Debug/libfmt.a -lssl -lcrypto -lboost_random -lboost_chrono -lboost_thread -lboost_system -lboost_regex -lboost_filesystem -lcpprest -lpthread
  LDDEPS += ../../../bin/linux/gmake/x32/Debug/libinfluxdb-cpp-rest.a ../../../bin/linux/gmake/x32/Debug/libfmt.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -shared -Wl,-soname=libinflux-c-rest.so
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),debug_x64)
  RESCOMP = windres
  TARGETDIR = ../../../bin/linux/gmake/x64/Debug
  TARGET = $(TARGETDIR)/libinflux-c-rest.so
  OBJDIR = ../../../obj/linux/gmake/x64/Debug/influx-c-rest
  DEFINES += -D_GLIBCXX_USE_CXX11_ABI=0 -D_DEBUG -DBUILDING_INFLUX_C_REST
  INCLUDES += -I../../../deps/fmt -I../../../deps/rxcpp/Rx/v2/src/rxcpp -I../../../src/influxdb-cpp-rest -I../../../src/influxdb-c-rest
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -fPIC -g -std=c++14
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -fPIC -g -std=c++14
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/linux/gmake/x64/Debug/libinfluxdb-cpp-rest.a ../../../bin/linux/gmake/x64/Debug/libfmt.a -lssl -lcrypto -lboost_random -lboost_chrono -lboost_thread -lboost_system -lboost_regex -lboost_filesystem -lcpprest -lpthread
  LDDEPS += ../../../bin/linux/gmake/x64/Debug/libinfluxdb-cpp-rest.a ../../../bin/linux/gmake/x64/Debug/libfmt.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,-soname=libinflux-c-rest.so
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x32)
  RESCOMP = windres
  TARGETDIR = ../../../bin/linux/gmake/x32/Release
  TARGET = $(TARGETDIR)/libinflux-c-rest.so
  OBJDIR = ../../../obj/linux/gmake/x32/Release/influx-c-rest
  DEFINES += -D_GLIBCXX_USE_CXX11_ABI=0 -DBUILDING_INFLUX_C_REST
  INCLUDES += -I../../../deps/fmt -I../../../deps/rxcpp/Rx/v2/src/rxcpp -I../../../src/influxdb-cpp-rest -I../../../src/influxdb-c-rest
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O2 -fPIC -std=c++14
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O2 -fPIC -std=c++14
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/linux/gmake/x32/Release/libinfluxdb-cpp-rest.a ../../../bin/linux/gmake/x32/Release/libfmt.a -lssl -lcrypto -lboost_random -lboost_chrono -lboost_thread -lboost_system -lboost_regex -lboost_filesystem -lcpprest -lpthread
  LDDEPS += ../../../bin/linux/gmake/x32/Release/libinfluxdb-cpp-rest.a ../../../bin/linux/gmake/x32/Release/libfmt.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -shared -Wl,-soname=libinflux-c-rest.so -s
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

ifeq ($(config),release_x64)
  RESCOMP = windres
  TARGETDIR = ../../../bin/linux/gmake/x64/Release
  TARGET = $(TARGETDIR)/libinflux-c-rest.so
  OBJDIR = ../../../obj/linux/gmake/x64/Release/influx-c-rest
  DEFINES += -D_GLIBCXX_USE_CXX11_ABI=0 -DBUILDING_INFLUX_C_REST
  INCLUDES += -I../../../deps/fmt -I../../../deps/rxcpp/Rx/v2/src/rxcpp -I../../../src/influxdb-cpp-rest -I../../../src/influxdb-c-rest
  FORCE_INCLUDE +=
  ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
  ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -fPIC -std=c++14
  ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O2 -fPIC -std=c++14
  ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
  LIBS += ../../../bin/linux/gmake/x64/Release/libinfluxdb-cpp-rest.a ../../../bin/linux/gmake/x64/Release/libfmt.a -lssl -lcrypto -lboost_random -lboost_chrono -lboost_thread -lboost_system -lboost_regex -lboost_filesystem -lcpprest -lpthread
  LDDEPS += ../../../bin/linux/gmake/x64/Release/libinfluxdb-cpp-rest.a ../../../bin/linux/gmake/x64/Release/libfmt.a
  ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -shared -Wl,-soname=libinflux-c-rest.so -s
  LINKCMD = $(CXX) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
  define PREBUILDCMDS
  endef
  define PRELINKCMDS
  endef
  define POSTBUILDCMDS
  endef
all: $(TARGETDIR) $(OBJDIR) prebuild prelink $(TARGET)
	@:

endif

OBJECTS := \
	$(OBJDIR)/influx_c_rest_async.o \
	$(OBJDIR)/influx_c_rest_query.o \

RESOURCES := \

CUSTOMFILES := \

SHELLTYPE := msdos
ifeq (,$(ComSpec)$(COMSPEC))
  SHELLTYPE := posix
endif
ifeq (/bin,$(findstring /bin,$(SHELL)))
  SHELLTYPE := posix
endif

$(TARGET): $(GCH) ${CUSTOMFILES} $(OBJECTS) $(LDDEPS) $(RESOURCES)
	@echo Linking influx-c-rest
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning influx-c-rest
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild:
	$(PREBUILDCMDS)

prelink:
	$(PRELINKCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) $(PCH)
$(GCH): $(PCH)
	@echo $(notdir $<)
	$(SILENT) $(CXX) -x c++-header $(ALL_CXXFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
endif

$(OBJDIR)/influx_c_rest_async.o: ../../../src/influx-c-rest/influx_c_rest_async.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/influx_c_rest_query.o: ../../../src/influx-c-rest/influx_c_rest_query.cpp
	@echo $(notdir $<)
	$(SILENT) $(CXX) $(ALL_CXXFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(OBJDIR)/$(notdir $(PCH)).d
endif