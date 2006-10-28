# $OpenBSD: Makefile,v 1.125 2006/10/28 15:28:35 brad Exp $
# Uses pthreads

.if ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "m88k"
BROKEN=		"gen_lex_hash hangs"
.endif

COMMENT=	"multithreaded SQL database (client)"
COMMENT-server=	"multithreaded SQL database (server)"
COMMENT-tests=	"multithreaded SQL database (regression test suite)"

VERSION=	5.0.26
DISTNAME=	mysql-${VERSION}
FULLPKGNAME=	mysql-client-${VERSION}p1
PKGNAME-server=	mysql-server-${VERSION}p1
FULLPKGNAME-tests= mysql-tests-${VERSION}
CATEGORIES=	databases
V=		MySQL-5.0
SHARED_LIBS +=	mysqlclient_r        17.0     # .15.0
SHARED_LIBS +=	mysqlclient          17.0     # .15.0

MASTER_SITES=	http://mysql.serenitynet.com/Downloads/$V/

HOMEPAGE=	http://www.mysql.com/

MAINTAINER=	Brad Smith <brad@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m pthread ssl z

DB_DIR?=	/var/mysql
SOCKET_DIR=	/var/run/mysql
SUBST_VARS=	DB_DIR SOCKET_DIR VERSION

# XXX gcc bug, gcc/3.3.5
.if ${MACHINE_ARCH} == "alpha"
CFLAGS+=	-mbwx
.endif

# Suggested flags for the C compiler, needed for
# high load servers otherwise MySQL will crash.
CXX=		${CC}
CXXFLAGS=	${CFLAGS} -felide-constructors -fno-exceptions -fno-rtti

VMEM_WARNING=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-thread-safe-client \
		 --localstatedir="${DB_DIR}" \
		 --with-big-tables \
		 --with-comment='OpenBSD port: ${FULLPKGNAME-server}' \
		 --with-libwrap \
		 --with-low-memory \
		 --with-mysqld-user="_mysql" \
		 --with-openssl \
		 --with-unix-socket-path="${SOCKET_DIR}/mysql.sock" \
		 --with-vio \
		 --without-bench \
		 --without-debug \
		 --without-docs \
		 --without-extra-tools \
		 --without-readline

.include <bsd.own.mk>

USE_GCC3?= No

.if ${USE_GCC3:L} == "yes"
CONFIGURE_ARGS+= --with-client-ldflags=-lsupc++ \
		 --with-mysqld-ldflags=-lsupc++
.endif

. if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --enable-assembler
.endif

MULTI_PACKAGES=	-server -tests
SUBPACKAGE?=

.if ${SUBPACKAGE} == "-server"
RUN_DEPENDS=	:mysql-client-5.0.*:databases/mysql \
		:p5-DBD-mysql-*:databases/p5-DBD-mysql
WANTLIB+=	wrap		
.elif empty(SUBPACKAGE)
WANTLIB+=	ncurses readline
.endif

.if defined(PACKAGING) && ${SUBPACKAGE} == "-tests"
PKG_ARCH=	*
WANTLIB=
.endif

DOCS=	manual.html manual.ps manual_toc.html manual.txt

post-install:
	cd ${PREFIX}/lib && \
		ln -sf mysql/libmysqlclient.so.${LIBmysqlclient_VERSION} . && \
		ln -sf mysql/libmysqlclient_r.so.${LIBmysqlclient_r_VERSION} .

do-regress:
	@cd ${WRKSRC}/mysql-test && ./mysql-test-run --force

.include <bsd.port.mk>
