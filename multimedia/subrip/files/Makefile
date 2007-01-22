PROGS=	srttool sub2pgm
OBJ_SRT=srttool.o
LIB_SRT=-lm
LIB_SUB=-lm
OBJ_SUB=mp_msg.o spudec.o subrip.o vobsub.o
BINDIR=/usr/local/bin
INSTALL_PROGRAM=cp

.PHONY: all install clean

all: ${PROGS}

install:
	for i in ${PROGS}; do \
		${INSTALL_PROGRAM} $$i ${DESTDIR}${BINDIR}; \
	done

clean:
	-rm ${OBJ_SRT} ${OBJ_SUB} ${PROGS}

srttool: ${OBJ_SRT}
	${CC} ${CFLAGS} -o $@ ${OBJ_SRT} ${LIB_SRT}

sub2pgm: ${OBJ_SUB}
	${CC} ${CFLAGS} -o $@ ${OBJ_SUB} ${LIB_SUB}


.SUFFIXES: .c .o

.c.o:
	${CC} -c ${CFLAGS} -I. $*.c
