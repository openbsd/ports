# $OpenBSD: Makefile,v 1.8 2014/09/13 18:09:20 brad Exp $

SHARED_ONLY=	Yes

COMMENT-main=	database interface library for Lua (including SQLite3)
COMMENT-mysql=	MySQL driver for luadbi
COMMENT-pgsql=	PostgreSQL driver for luadbi

V=		0.5
DISTNAME=	luadbi.$V
PKGNAME-main=	luadbi-$V
PKGNAME-mysql=	luadbi-mysql-$V
PKGNAME-pgsql=	luadbi-pgsql-$V
REVISION-main=	0
REVISION-mysql=	3
REVISION-pgsql=	0

CATEGORIES=	databases

HOMEPAGE=	https://luadbi.googlecode.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

MULTI_PACKAGES=		-main -mysql -pgsql

WANTLIB-main=		sqlite3
RUN_DEPENDS-main=	#empty

WANTLIB-mysql=		mysqlclient
LIB_DEPENDS-mysql=	databases/mariadb
RUN_DEPENDS-mysql=	${BASE_PKGPATH},-main

WANTLIB-pgsql=		pq
BUILD_DEPENDS=		databases/postgresql,-server
LIB_DEPENDS-pgsql=	databases/postgresql
RUN_DEPENDS-pgsql=	${BASE_PKGPATH},-main

MODULES=		lang/lua

USE_GMAKE=		Yes

ALL_TARGET=		free # == sqlite3 mysql postgresql
NO_TEST=		Yes

MAKE_FLAGS=	CC="${CC}" \
		COMMON_LDFLAGS="-L${LOCALBASE}/lib" \
		CFLAGS="${CFLAGS} -I${MODLUA_INCL_DIR} -I${LOCALBASE}/include/mysql \
			-I${LOCALBASE}/include/postgresql/ -I${LOCALBASE}/include/postgresql/server \
			-I. -fpic -shared"

WRKDIST=	${WRKDIR}

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/DBI.lua ${MODLUA_DATADIR}
# XXX: Not using INSTALL_PROGRAM, it strips the library.
	${INSTALL_SCRIPT} ${WRKSRC}/*.so ${MODLUA_LIBDIR}

.include <bsd.port.mk>
