# $OpenBSD: Makefile,v 1.57 2001/09/28 17:43:01 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $
# Uses pthreads

COMMENT=	"multithreaded SQL database (client)"
COMMENT-server=	"multithreaded SQL database (server)"
COMMENT-tests=	"multithreaded SQL database (test suite)"

VERSION=	3.23.42
DISTNAME=	mysql-${VERSION}
FULLPKGNAME=	mysql-client-${VERSION}
PKGNAME-server=	mysql-server-${VERSION}
FULLPKGNAME-tests=	mysql-tests-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.460
MASTER_SITES=	http://www.mysql.com/Downloads/%SUBDIR%/ \
		http://www.kernelnotes.de/MySQL/Downloads/%SUBDIR%/ \
		http://www.mysql.net/Downloads/%SUBDIR%/ \
		http://mysql.he.net/Downloads/%SUBDIR%/ \
		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/%SUBDIR%/ \
		ftp://ftp.shellhung.org/pub/Mirror/mysql/Downloads/%SUBDIR%/
MASTER_SITE_SUBDIR= MySQL-3.23

HOMEPAGE=	http://www.mysql.com/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DB_DIR?=	/var/mysql
SUBST_VARS=	DB_DIR VERSION

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/mit-pthreads/config
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --localstatedir="${DB_DIR}" \
		 --with-libwrap="/usr" \
		 --with-mysqld-user="mysql" \
		 --with-unix-socket-path="${DB_DIR}/mysql.sock" \
		 --without-perl \
		 --without-debug \
		 --without-readline \
		 --without-bench \
		 --without-mit-threads \
		 --without-gemini
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/pth" \
		LDFLAGS="-L${LOCALBASE}/lib/pth"

FLAVORS=	max
FLAVOR?=

MULTI_PACKAGES=	-server -tests
SUBPACKAGE?=

.if ${FLAVOR:L:Mmax}
CONFIGURE_ARGS+= --with-berkeley-db --with-innodb
.else
CONFIGURE_ARGS+= --without-berkeley-db --without-innodb
.endif

.if !defined(PACKAGING)
LIB_DEPENDS=	pthread.14:pth-1.4.*:devel/pth
.elif ${SUBPACKAGE} == "-server"
LIB_DEPENDS=	pthread.14:pth-1.4.*:devel/pth
RUN_DEPENDS=	:mysql-client-3.23.*:databases/mysql
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql/Flags
	@sed -e s#@PREFIX@#${TRUEPREFIX}#g -e s#@LOCALBASE@#${LOCALBASE}#g \
		${FILESDIR}/startup.sh > ${WRKBUILD}/startup.sh
	${INSTALL_SCRIPT} ${WRKBUILD}/startup.sh ${PREFIX}/lib/mysql
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mysql
	${INSTALL_DATA} ${WRKSRC}/Docs/Flags/*.gif \
		${PREFIX}/share/doc/mysql/Flags

.include <bsd.port.mk>
