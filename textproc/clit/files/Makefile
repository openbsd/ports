CFLAGS += -funsigned-char
CFLAGS += -Ilib/des -Ilib/sha -Ilib/newlzx -Ilib -I. -I${LOCALBASE}/include
LDFLAGS += -ltommath -L${LOCALBASE}/lib

all: clit

clit:
	${CC} ${CFLAGS} -o $@ {,lib/{,des/,newlzx/,sha/}}*.c ${LDFLAGS}

install: all
	${BSD_INSTALL_PROGRAM} clit ${PREFIX}/bin/clit

clean:
	rm -f clit
