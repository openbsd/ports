# $OpenBSD: Makefile,v 1.62 2001/12/29 17:56:56 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $
# Uses pthreads

# More architectures need testing of MySQL+native threads
.if ${MACHINE_ARCH} != "i386"
BROKEN=		"Support for ${MACHINE_ARCH} threads is currently broken and/or untested with MySQL"
.endif

COMMENT=	"multithreaded SQL database (client)"
COMMENT-server=	"multithreaded SQL database (server)"
COMMENT-tests=	"multithreaded SQL database (test suite)"

VERSION=	3.23.47
DISTNAME=	mysql-${VERSION}
FULLPKGNAME=	mysql-client-${VERSION}
PKGNAME-server=	mysql-server-${VERSION}
FULLPKGNAME-tests=	mysql-tests-${VERSION}
CATEGORIES=	databases
NEED_VERSION=	1.500
MASTER_SITES=	ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/%SUBDIR%/ \
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

# Suggested flags to the C++ compiler, needed for
# high load servers otherwise MySQL will crash.
CXXFLAGS=	${CFLAGS} -felide-constructors -fno-exceptions -fno-rtti

CONFIGURE_STYLE= gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC} ${WRKSRC}/mit-pthreads/config
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

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
		patch-*

FLAVORS=	max
FLAVOR?=

MULTI_PACKAGES=	-server -tests
SUBPACKAGE?=

.if ${FLAVOR:L:Mmax}
CONFIGURE_ARGS+= --with-berkeley-db --with-innodb
.else
CONFIGURE_ARGS+= --without-berkeley-db --without-innodb
.endif

.if ${SUBPACKAGE} == "-server"
RUN_DEPENDS=	:mysql-client-3.23.*:databases/mysql
.endif

VMEM_WARNING=	Yes

DOCS=	manual.html manual.ps manual_toc.html manual.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql/Flags
	cd ${WRKSRC}/Docs; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/mysql
	${INSTALL_DATA} ${WRKSRC}/Docs/Flags/*.gif \
		${PREFIX}/share/doc/mysql/Flags
	@if [ -f ${PREFIX}/lib/mysql/libmysqlclient.so.10.0 ]; then \
	  cd ${PREFIX}/lib && ln -sf mysql/libmysqlclient.so.10.0 \
		libmysqlclient.so.10.0 ;\
	fi

do-regress:
	@cd ${WRKSRC}/mysql-test && exec mysql-test-run

.include <bsd.port.mk>
