# $OpenBSD: Makefile,v 1.32 2001/01/23 00:48:45 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $

DISTNAME=	mysql-3.23.32
CATEGORIES=	databases
NEED_VERSION=	1.336
MASTER_SITES=	http://www.mysql.net/Downloads/MySQL-3.23/ \
		http://www.gina.net/mysql/Downloads/MySQL-3.23/ \
		http://mysql.pingzero.net/Downloads/MySQL-3.23/ \
		ftp://ftp.digex.net/pub/packages/database/mysql/Downloads/MySQL-3.23/

HOMEPAGE=	http://www.mysql.com/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DB_DIR?=	/var/mysql
SUBST_VARS=	DB_DIR

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --localstatedir="${DB_DIR}" \
		 --with-libwrap \
		 --with-mysqld-user="mysql" \
		 --with-unix-socket-path="${DB_DIR}/mysql.sock" \
		 --without-perl \
		 --without-debug \
		 --without-readline \
		 --without-bench \
		 --without-mit-threads

FLAVORS=	pth
FLAVOR?=

.if ${FLAVOR:L} == "pth"
LIB_DEPENDS=	pthread.13::devel/pth
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
.else
. if ${MACHINE_ARCH} == "sparc" || ${MACHINE_ARCH} == "powerpc"
BROKEN=		"pthreads are currently not working on the ${MACHINE_ARCH} architecture"
. endif
.endif

DOCS=	manual.html manual.ps manual_toc.html manual.txt

pre-build:      
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql/Flags
	@sed -e s#@PREFIX@#${TRUEPREFIX}#g \
		${FILESDIR}/startup.sh > ${WRKDIR}/startup.sh
	${INSTALL_SCRIPT} ${WRKDIR}/startup.sh ${PREFIX}/lib/mysql
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mysql
	${INSTALL_DATA} ${WRKSRC}/Docs/Flags/*.gif \
		${PREFIX}/share/doc/mysql/Flags

.include <bsd.port.mk>
