# $OpenBSD: Makefile,v 1.17 2000/03/24 22:11:38 espie Exp $

DISTNAME=	db-3.0.55
CATEGORIES=	databases
NEED_VERSION=	1.191
MASTER_SITES=	http://www.sleepycat.com/update/3.0.55/

MAINTAINER=	tacho@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

GNU_CONFIGURE=	yes
CONFIGURE_SCRIPT=../dist/configure
CONFIGURE_ARGS=	--enable-compat185 --enable-dump185 --enable-cxx 

.if defined(USE_JAVA) && ${USE_JAVA:U} == YES
CONFIGURE_ARGS+= --enable-java
.endif

IS_INTERACTIVE=	yes

NO_PACKAGE=	"interactive port"

WRKDIST=	${WRKDIR}/${DISTNAME}/build_unix

EXAMPLES_C=	README ex_access.c ex_btrec.c ex_env.c ex_lock.c \
		ex_mpool.c ex_thread.c ex_tpcb.c ex_tpcb.h
EXAMPLES_CPP=	AccessExample.cpp BtRecExample.cpp EnvExample.cpp \
		LockExample.cpp MpoolExample.cpp TpcbExample.cpp 
EXAMPLES_JAVA=  AccessExample.java BtRecExample.java EnvExample.java \
		LockExample.java TpcbExample.java

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/db
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/db
	@mv ${PREFIX}/docs/* ${PREFIX}/share/doc/db
	@mv ${PREFIX}/include/db.h ${PREFIX}/include/db3.h
	@rmdir ${PREFIX}/docs
	@echo "Installing samples: ${PREFIX}/share/examples/db ..."
	@cd ${WRKSRC}/../examples_c; ${INSTALL_DATA} ${EXAMPLES_C} \
		${PREFIX}/share/examples/db
	@cd ${WRKSRC}/../examples_cxx; ${INSTALL_DATA} ${EXAMPLES_CPP} \
		${PREFIX}/share/examples/db
	@cd ${WRKSRC}/../examples_java; ${INSTALL_DATA} ${EXAMPLES_JAVA} \
		${PREFIX}/share/examples/db
	@echo ""
	@echo "Java support for ${PKGNAME} is *NOT* built by default,"
	@echo "and requires that you have a working copy of the JDK"
	@echo "installed."
	@echo ""
	@echo "To build Java support, use the \"USE_JAVA=yes\" option"
	@echo "on the make command line."
	@echo "For example: \"make USE_JAVA=yes\""
	@echo ""

.include <bsd.port.mk>
