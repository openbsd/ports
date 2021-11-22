# $OpenBSD: Makefile,v 1.16 2021/11/22 13:55:54 espie Exp $

COMMENT-main=	database interface library for Lua (including SQLite3)
COMMENT-mysql=	MySQL driver for luadbi
COMMENT-pgsql=	PostgreSQL driver for luadbi

V=		0.6
GH_ACCOUNT=	mwild1
GH_PROJECT=	luadbi
GH_TAGNAME=	v${V}
REVISION=	1

PKGNAME=		luadbi-$V
FULLPKGNAME-main=	${_MODLUA_PKG_PREFIX}dbi-$V
FULLPKGNAME-mysql=	${_MODLUA_PKG_PREFIX}dbi-mysql-$V
FULLPKGNAME-pgsql=	${_MODLUA_PKG_PREFIX}dbi-pgsql-$V
FULLPKGPATH-main=	databases/luadbi,${MODLUA_FLAVOR:=,}-main
FULLPKGPATH-mysql=	databases/luadbi,${MODLUA_FLAVOR:=,}-mysql
FULLPKGPATH-pgsql=	databases/luadbi,${MODLUA_FLAVOR:=,}-pgsql

CATEGORIES=	databases

# MIT
PERMIT_PACKAGE=	Yes

MULTI_PACKAGES=	-main -mysql -pgsql

MODULES=	lang/lua
FLAVORS=	lua52 lua53
FLAVOR?=

WANTLIB-main=		sqlite3
LIB_DEPENDS-main=	databases/sqlite3
RUN_DEPENDS-main=	#empty

WANTLIB-mysql=		mariadb
LIB_DEPENDS-mysql=	databases/mariadb
RUN_DEPENDS-mysql=	${BASE_PKGPATH},-main

WANTLIB-pgsql=		pq
BUILD_DEPENDS=		databases/postgresql,-server
LIB_DEPENDS-pgsql=	databases/postgresql
RUN_DEPENDS-pgsql=	${BASE_PKGPATH},-main

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
