COMMENT =		lightweight C++ API for Lua
DISTNAME =		lutok-0.6.3

SHARED_LIBS +=		lutok                     0.0 # 2.0

CATEGORIES =		devel
HOMEPAGE =		https://github.com/freebsd/lutok/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODLUA_WANTLIB} m ${COMPILER_LIBCXX}

SITES =			https://github.com/freebsd/lutok/releases/download/${DISTNAME}/

COMPILER =		base-clang ports-gcc

MODULES =		lang/lua
MODLUA_VERSION =	5.4
MODLUA_SA =		Yes

# Test if files are installed correctly
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_TARGET =		installcheck

CONFIGURE_STYLE  =	gnu
CONFIGURE_ARGS =	--with-doxygen=no
CONFIGURE_ENV =		LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
			LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
