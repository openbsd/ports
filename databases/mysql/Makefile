# $OpenBSD: Makefile,v 1.84 2003/01/29 16:35:55 brad Exp $
# $FreeBSD: Makefile,v 1.44 1999/03/04 21:27:58 dirk Exp $
# Uses pthreads

COMMENT=	"multithreaded SQL database (client)"
COMMENT-server=	"multithreaded SQL database (server)"
COMMENT-tests=	"multithreaded SQL database (regression test suite)"

VERSION=	3.23.55
DISTNAME=	mysql-${VERSION}
FULLPKGNAME=	mysql-client-${VERSION}
PKGNAME-server=	mysql-server-${VERSION}
FULLPKGNAME-tests= mysql-tests-${VERSION}
CATEGORIES=	databases
V=		MySQL-3.23
MASTER_SITES=	ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/$V/ \
		ftp://ftp.shellhung.org/pub/Mirror/mysql/Downloads/$V/

HOMEPAGE=	http://www.mysql.com/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DB_DIR?=	/var/mysql
SOCKET_DIR=	/var/run/mysql
SUBST_VARS=	DB_DIR SOCKET_DIR VERSION

# Suggested flags to the C++ compiler, needed for
# high load servers otherwise MySQL will crash.
CXX=		${CC}
CXXFLAGS=	${CFLAGS} -felide-constructors -fno-exceptions -fno-rtti

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_NEW=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static \
		 --localstatedir="${DB_DIR}" \
		 --with-comment='OpenBSD port: ${FULLPKGNAME-server}' \
		 --with-innodb \
		 --with-libwrap="/usr" \
		 --with-mysqld-user="mysql" \
		 --with-unix-socket-path="${SOCKET_DIR}/mysql.sock" \
		 --without-bench \
		 --without-debug \
		 --without-docs \
		 --without-gemini \
		 --without-mit-threads \
		 --without-perl \
		 --without-readline
CONFIGURE_ENV=	HOSTNAME="/bin/hostname -s"

FLAVORS=	bdb
FLAVOR?=

MULTI_PACKAGES=	-server -tests
SUBPACKAGE?=

.if ${FLAVOR:L:Mbdb}
. if ${MACHINE_ARCH} != "i386"
BROKEN=		"The BerkeleyDB transaction support has not been tested on your architecture yet"
. else
CONFIGURE_ARGS+= --with-berkeley-db
. endif
.else
CONFIGURE_ARGS+= --without-berkeley-db
.endif

.if ${SUBPACKAGE} == "-server"
RUN_DEPENDS=	:mysql-client-3.23.*:databases/mysql \
		:p5-DBD-Msql-Mysql-*:databases/p5-DBD-Msql-Mysql
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
	@cd ${WRKSRC}/mysql-test && ./mysql-test-run --force

.include <bsd.port.mk>
