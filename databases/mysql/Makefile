# $OpenBSD: Makefile,v 1.38 2001/03/17 18:26:39 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $

VERSION=	3.23.35
DISTNAME=	mysql-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.336
MASTER_SITES=	http://www.kernelnotes.de/MySQL/Downloads/%SUBDIR%/ \
		http://www.mysql.net/Downloads/%SUBDIR%/ \
		http://mysql.he.net/Downloads/%SUBDIR%/ \
		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/%SUBDIR%/ \
		ftp://ftp.shellhung.org/pub/Mirror/mysql/Downloads/%SUBDIR%
MASTER_SITE_SUBDIR= MySQL-3.23

HOMEPAGE=	http://www.mysql.com/

LIB_DEPENDS=	pthread.13::devel/pth

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DB_DIR?=	/var/mysql
SUBST_VARS=	DB_DIR VERSION

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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

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
