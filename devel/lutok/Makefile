# $OpenBSD $

COMMENT =		lightweight C++ API for Lua
DISTNAME =		lutok-0.4

SHARED_LIBS +=		lutok                     0.0 # 2.0
CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/lutok/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atf-c atf-c++ c ${MODLUA_WANTLIB} m stdc++

MASTER_SITES =		https://github.com/jmmv/lutok/releases/download/${DISTNAME}/

MODULES =		lang/lua
MODLUA_SA =		Yes

LIB_DEPENDS =		devel/atf

FLAVORS =		# lua52 from lua.port.mk
FLAVOR ?=

.if ${FLAVOR:Mlua52}
TEST_DEPENDS =		devel/kyua-cli,lua52
.else
TEST_DEPENDS =		devel/kyua-cli
.endif

CONFIGURE_STYLE  =	gnu
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--without-doxygen
CONFIGURE_ENV =		LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
			LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

# Install the package and use the following TEST_TARGET if you want to
# perform the tests on the installed files.
#TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
