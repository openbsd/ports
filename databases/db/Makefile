# $OpenBSD: Makefile,v 1.9 1999/06/18 04:06:16 marc Exp $

DISTNAME=	db-2.7.5
CATEGORIES=	databases

MAINTAINER=	tacho@openbsd.org

MIRROR_DISTFILE=	no

MASTER_SITES=	see-do-fetch-target

GNU_CONFIGURE=	YES
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS=		--host=${ARCH}-unknown-openbsd --prefix=${PREFIX} \
			--enable-compat185 --enable-dump185 --enable-cxx

WRKSRC=		${WRKDIR}/${DISTNAME}/build_unix

EXAMPLES=	README ex_access.c ex_appinit.c ex_btrec.c ex_lock.c \
		ex_mpool.c ex_tpcb.c ex_tpcb.h
EXAMPLES_CPP=	AccessExample.cpp AppinitExample.cpp LockExample.cpp \
		MpoolExample.cpp TpcbExample.cpp

IS_INTERACTIVE=		yes

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	 ${ECHO} "";\
	 ${ECHO} "  The source to this port may not be automatically fetched.";\
	 ${ECHO} "  See http://www.sleepycat.com/register.html for details.";\
	 ${ECHO} "";\
	 ${ECHO} "  Once ${DISTFILES} has been downloaded,";\
	 ${ECHO} "  move it to ${DISTDIR} and restart this build.";\
	 ${ECHO} "";\
	 exit 1;\
	fi

post-install:
	@mv ${PREFIX}/include/db.h ${PREFIX}/include/db2.h
	@mv ${PREFIX}/lib/libdb.a ${PREFIX}/lib/libdb2.a
	@${MKDIR} ${PREFIX}/share/examples/db
	@echo Installing samples: ${PREFIX}/share/examples/db ...
.for example in ${EXAMPLES}
	@${INSTALL_DATA} ${WRKSRC}/../examples/${example} \
		${PREFIX}/share/examples/db
.endfor
.for example in ${EXAMPLES_CPP}
	@${INSTALL_DATA} ${WRKSRC}/../examples_cxx/${example} \
		${PREFIX}/share/examples/db
.endfor

.include <bsd.port.mk>
