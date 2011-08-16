# XXX no dependency on .h, but better than nothing at all

SRCS = 608.cpp 608_helpers.cpp 608_sami.cpp 608_srt.cpp 708.cpp \
	708_encoding.cpp activity.cpp asf_functions.cpp avc_functions.cpp \
	bitstream.cpp ccextractor.cpp encoding.cpp es_functions.cpp \
	es_userdata.cpp file_functions.cpp general_loop.cpp myth.cpp \
	output.cpp params.cpp params_dump.cpp sequencing.cpp \
	stream_functions.cpp timing.cpp ts_functions.cpp 

PROG = ccextractor
OBJS = ${SRCS:.cpp=.o}

all: ${PROG}
${PROG}: ${OBJS}
	${CXX} -o $@ ${CFLAGS} ${OBJS}

.SUFFIXES: .cpp .o
.cpp.o:
	${CXX} -c ${CFLAGS} $*.cpp

.PHONY: all
