# $OpenBSD: Makefile,v 1.146 2009/01/07 22:54:15 sthen Exp $

COMMENT-main=	multithreaded SQL database (client)
COMMENT-server=	multithreaded SQL database (server)
COMMENT-tests=	multithreaded SQL database (regression test suite)

VERSION=	5.0.75
DISTNAME=	mysql-${VERSION}
PKGNAME-main=	mysql-client-${VERSION}
PKGNAME-server=	mysql-server-${VERSION}
PKGNAME-tests= 	mysql-tests-${VERSION}
CATEGORIES=	databases
V=		MySQL-5.0
SHARED_LIBS +=	mysqlclient_r		19.0
SHARED_LIBS +=	mysqlclient		19.0

MASTER_SITES=	http://mysql.serenitynet.com/Downloads/$V/

HOMEPAGE=	http://www.mysql.com/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
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
		 --with-archive-storage-engine \
		 --with-big-tables \
		 --with-comment='OpenBSD port: ${FULLPKGNAME-server}' \
		 --with-federated-storage-engine \
		 --with-libwrap \
		 --with-low-memory \
		 --with-mysqld-user="_mysql" \
		 --with-openssl \
		 --with-unix-socket-path="${SOCKET_DIR}/mysql.sock" \
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

MULTI_PACKAGES=		-main -server -tests

RUN_DEPENDS-server=	:mysql-client-5.0.*:databases/mysql \
			:p5-DBD-mysql-*:databases/p5-DBD-mysql

LIB_DEPENDS-server=	mysqlclient:mysql-client-5.0.*:databases/mysql

WANTLIB-server=		${WANTLIB} wrap		

WANTLIB-main=		${WANTLIB} ncurses readline

PKG_ARCH-tests=	*
WANTLIB-tests=

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mysql
	cd ${PREFIX}/lib && \
		ln -sf mysql/libmysqlclient.so.${LIBmysqlclient_VERSION} . && \
		ln -sf mysql/libmysqlclient_r.so.${LIBmysqlclient_r_VERSION} .
	cp ${FILESDIR}/README.OpenBSD ${WRKBUILD}/README.OpenBSD
	${SUBST_CMD} ${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD ${PREFIX}/share/doc/mysql
	${INSTALL_DATA} ${WRKSRC}/Docs/mysql.info ${PREFIX}/info

do-regress:
	@cd ${WRKSRC}/mysql-test && ./mysql-test-run-shell --force

.include <bsd.port.mk>
