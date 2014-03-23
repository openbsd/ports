# $OpenBSD: Makefile,v 1.224 2014/03/23 16:49:30 brad Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multithreaded SQL database (client)
COMMENT-server=	multithreaded SQL database (server)
COMMENT-tests=	multithreaded SQL database (regression test suite/benchmark)

VERSION=	5.1.73
DISTNAME=	mysql-${VERSION}
PKGNAME-main=	mysql-client-${VERSION}
PKGNAME-server=	mysql-server-${VERSION}
PKGNAME-tests= 	mysql-tests-${VERSION}
CATEGORIES=	databases
V=		MySQL-5.1
MASTER_SITES=	${MASTER_SITE_MYSQL:=Downloads/$V/}

REVISION-server= 0
EPOCH-main=	0
EPOCH-server=	0
EPOCH-tests=	0

SHARED_LIBS=	mysqlclient_r	23.0 \
		mysqlclient	23.0

HOMEPAGE=	http://www.mysql.com/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pthread

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/mysql
SOCKET_DIR=	/var/run/mysql
SUBST_VARS=	SOCKET_DIR

MULTI_PACKAGES=		-main -server -tests

# Suggested flags for the C compiler, needed for
# high load servers otherwise MySQL will crash.
CXX=		${CC}
CXXFLAGS=	${CFLAGS} -felide-constructors -fno-exceptions -fno-rtti

USE_GROFF=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.63
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-big-tables \
		 --with-client-ldflags=-lsupc++ \
		 --with-comment='OpenBSD port: ${FULLPKGNAME-server}' \
		 --with-low-memory \
		 --with-mysqld-ldflags=-lsupc++ \
		 --with-mysqld-user="_mysql" \
		 --with-plugins=max-no-ndb \
		 --with-ssl=/usr \
		 --with-unix-socket-path="${SOCKET_DIR}/mysql.sock" \
		 --without-docs \
		 --without-readline

. if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+= --enable-assembler
.endif

RUN_DEPENDS-server=	${BASE_PKGPATH}>=5.1v0,<5.2v0 \
			databases/p5-DBD-mysql
LIB_DEPENDS-server=	${BASE_PKGPATH}>=5.1v0,<5.2v0

WANTLIB-server=		${WANTLIB} crypto mysqlclient ssl z
WANTLIB-main=		${WANTLIB} crypto ncursesw readline ssl z
WANTLIB-tests=		${WANTLIB}

TEST_TARGET=		test-force

post-install:
	cd ${PREFIX}/lib && \
		ln -sf mysql/libmysqlclient.so.${LIBmysqlclient_VERSION} . && \
		ln -sf mysql/libmysqlclient_r.so.${LIBmysqlclient_r_VERSION} .
	${INSTALL_DATA} ${WRKSRC}/Docs/mysql.info ${PREFIX}/info

.include <bsd.port.mk>
