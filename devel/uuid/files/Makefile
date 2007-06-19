
LIB=		uuid

PG_CONFIG?=	pg_config
PG_CFLAGS!=	${PG_CONFIG} --cflags
PG_CPPFLAGS!=	${PG_CONFIG} --cppflags
PG_INCDIR!=	${PG_CONFIG} --pkgincludedir
PG_LIBDIR!=	${PG_CONFIG} --pkglibdir
PG_SHAREDIR!=	${PG_CONFIG} --sharedir
PG_DOCDIR!=	${PG_CONFIG} --docdir

CFLAGS=		${PG_CFLAGS}
CPPFLAGS=	${PG_CPPFLAGS} -I.. -I${PG_INCDIR}/server -I${PG_INCDIR}/internal

LDFLAGS=	-L../.libs -L${PG_LIBDIR}
LDADD=		-luuid -lc

.SUFFIXES: .sql .sql.in .c .o .so

all: ${LIB:=.sql} ${LIB:=.so}

.sql.in.sql:
	sed -e 's,MODULE_PATHNAME,$$libdir/$*,g' $< >$@

.c.o:
	${COMPILE.c} ${PICFLAG} -DPIC ${.IMPSRC} -o ${.TARGET}

.o.so:
	${AR} cr ${LIB}.a uuid.o
	${RANLIB} ${LIB}.a
	${CC} ${CFLAGS} ${PICFLAG} -DPIC -shared -Wl,-x ${.IMPSRC} \
	    ${LDFLAGS} ${LDADD} -o ${.TARGET}

install: all
	${INSTALL} -d ${DESTDIR}${PG_LIBDIR}
	${INSTALL} ${LIB:=.so} ${DESTDIR}${PG_LIBDIR}/${LIB:=.so}
	${INSTALL} -d ${DESTDIR}${PG_SHAREDIR}
	${INSTALL} uuid.sql ${DESTDIR}${PG_SHAREDIR}/uuid.sql
	${INSTALL} -d ${DESTDIR}${PG_DOCDIR}
	${INSTALL} uuid.txt ${DESTDIR}${PG_DOCDIR}/uuid.txt

clean:
	rm -f a.out [Ee]rrs mklog core *.core
	rm -f ${LIB:=.sql} ${LIB}*.{a,o,so}

.PHONY: clean

.include <bsd.own.mk>
