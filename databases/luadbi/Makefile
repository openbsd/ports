# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:53 sthen Exp $

COMMENT-main=	database interface library for Lua (including SQLite3)
COMMENT-mysql=	MySQL driver for luadbi
COMMENT-pgsql=	PostgreSQL driver for luadbi

GH_ACCOUNT=	mwild1
GH_PROJECT=	luadbi
V=		0.6
GH_TAGNAME=	v${V}
PKGNAME-main=	${GH_PROJECT}-${V}
PKGNAME-mysql=	${GH_PROJECT}-mysql-$V
PKGNAME-pgsql=	${GH_PROJECT}-pgsql-$V
REVISION-main = 0

CATEGORIES=	databases

# MIT
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=		-main -mysql -pgsql

WANTLIB-main=		sqlite3
LIB_DEPENDS-main=	databases/sqlite3
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
INSTALL_TARGET=		install_free
# requires luarocks
NO_TEST=		Yes

MAKE_FLAGS=	CC="${CC}" \
		COMMON_LDFLAGS="-L${LOCALBASE}/lib" \
		LUA_INC="-I${MODLUA_INCL_DIR}" \
		MYSQL_INC="-I${LOCALBASE}/include/mysql" \
		SQLITE3_INC="-I${LOCALBASE}/include" \
		PSQL_INC="-I${LOCALBASE}/include/postgresql"

FAKE_FLAGS=	LUA_LDIR=${MODLUA_DATADIR} \
		LUA_CDIR=${MODLUA_LIBDIR}

.include <bsd.port.mk>
