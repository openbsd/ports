# $OpenBSD: Makefile,v 1.11 1999/12/02 07:17:10 kevlo Exp $

DISTNAME=	db-3.0.55
CATEGORIES=	databases

MAINTAINER=	tacho@openbsd.org

MASTER_SITES=	http://www.sleepycat.com/update/3.0.55/

GNU_CONFIGURE=	YES
CONFIGURE_SCRIPT=	../dist/configure
CONFIGURE_ARGS=		--host=${ARCH}-unknown-openbsd --prefix=${PREFIX} \
			--enable-compat185 --enable-dump185 --enable-cxx \
			--enable-shared --enable-dynamic

WRKSRC=		${WRKDIR}/${DISTNAME}/build_unix

EXAMPLES_C=	README ex_access.c ex_btrec.c ex_env.c ex_lock.c \
		ex_mpool.c ex_thread.c ex_tpcb.c ex_tpcb.h
EXAMPLES_CPP=	AccessExample.cpp BtRecExample.cpp EnvExample.cpp \
		LockExample.cpp MpoolExample.cpp TpcbExample.cpp 
EXAMPLES_JAVA=  AccessExample.java BtRecExample.java EnvExample.java \
		LockExample.java TpcbExample.java

IS_INTERACTIVE=		yes
NO_PACKAGE=		interactive port

post-install:
	@mv ${PREFIX}/include/db.h ${PREFIX}/include/db3.h
	@${MKDIR} ${PREFIX}/share/doc/db
	@${MV} ${PREFIX}/docs/* ${PREFIX}/share/doc/db
	@${RMDIR} ${PREFIX}/docs
	@${MKDIR} ${PREFIX}/share/examples/db
	@echo Installing samples: ${PREFIX}/share/examples/db ...
.for example in ${EXAMPLES_C}
	@${INSTALL_DATA} ${WRKSRC}/../examples_c/${example} \
		${PREFIX}/share/examples/db
.endfor
.for example in ${EXAMPLES_CPP}
	@${INSTALL_DATA} ${WRKSRC}/../examples_cxx/${example} \
		${PREFIX}/share/examples/db
.endfor
.for example in ${EXAMPLES_JAVA}
	@${INSTALL_DATA} ${WRKSRC}/../examples_java/${example} \
		${PREFIX}/share/examples/db
.endfor
	@${ECHO_MSG} ""
	@${ECHO_MSG} "Java support for ${PKGNAME} is *not* built by default,"
	@${ECHO_MSG} "and requires that you have a work working copy of the"
	@${ECHO_MSG} "JDK installed."
	@${ECHO_MSG} ""
	@${ECHO_MSG} "To build java support, please add \"--enable-java\""
	@${ECHO_MSG} "in CONFIGURE_ARGS, thaks."

.include <bsd.port.mk>
