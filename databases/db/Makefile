# $OpenBSD: Makefile,v 1.5 1998/10/08 04:23:55 marc Exp $
#

DISTNAME=	db-2.3.16
CATEGORIES=	databases

BROKEN=		"newer version available"

MAINTAINER=	tacho@openbsd.org

MASTER_SITES=	http://www.sleepycat.com/packages/

GNU_CONFIGURE=	YES
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS=		--host=${ARCH}-unknown-openbsd --prefix=${PREFIX}\
			--enable-compat185 --enable-dump185 --enable-cxx
WRKSRC=		${WRKDIR}/${DISTNAME}/build.unix

DOCs=		hash.usenix.ps libtp.usenix.ps
EXAMPLES=	README ex_access.c ex_appinit.c ex_btrec.c ex_lock.c \
		ex_mpool.c ex_tpcb.c ex_tpcb.h
EXAMPLES_CPP=	AccessExample.cpp AppinitExample.cpp LockExample.cpp \
		MpoolExample.cpp TpcbExample.cpp

post-install:
	${MKDIR} ${PREFIX}/share/doc/db
.for doc in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/../documents/${doc} ${PREFIX}/share/doc/db
	gzip -9 ${PREFIX}/share/doc/db/${doc}
.endfor
	${MKDIR} ${PREFIX}/share/examples/db
.for example in ${EXAMPLES}
	${INSTALL_DATA} ${WRKSRC}/../examples/${example} \
		${PREFIX}/share/examples/db
.endfor
.for example in ${EXAMPLES_CPP}
	${INSTALL_DATA} ${WRKSRC}/../examples_cxx/${example} \
		${PREFIX}/share/examples/db
.endfor

.include <bsd.port.mk>
