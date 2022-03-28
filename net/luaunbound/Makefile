COMMENT =	Lua bindings for libunbound

DISTNAME =	luaunbound-1.0.0
REVISION =	1

CATEGORIES =	net

HOMEPAGE =	https://www.zash.se/luaunbound.html

MAINTAINER =	Lucas <lucas@sexy.is>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += unbound

MASTER_SITES =	https://code.zash.se/dl/luaunbound/

MODULES =	lang/lua

LIB_DEPENDS =	net/libunbound

MAKE_FLAGS =	CC="${CC}" CFLAGS="${CFLAGS}" \
		LD="${CC}" LDFLAGS="${LDFLAGS}" \
		LUA_LIBDIR="${MODLUA_LIBDIR}"

USE_GMAKE =	Yes

FLAVORS =	lua52 lua53
FLAVOR ?=

NO_TEST =	Yes

CFLAGS +=	-fPIC -I${LOCALBASE}/include -I${MODLUA_INCL_DIR}
LDFLAGS =	-shared -L${LOCALBASE}/lib
MAKE_FILE =	GNUmakefile

.include <bsd.port.mk>
