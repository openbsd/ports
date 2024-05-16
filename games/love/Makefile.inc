COMMENT ?=	2D games framework for use with Lua

DISTNAME ?=	love-${VERSION}-linux-src
PKGNAME ?=	love-${VERSION}

CATEGORIES +=	games

HOMEPAGE =	https://love2d.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/love2d/love/releases/download/${VERSION}/

COMPILER =		base-clang ports-gcc

MODULES ?=		lang/lua

SUFFIX =		-${VERSION:R}
SUBST_VARS +=		SUFFIX VERSION

CONFIGURE_STYLE ?=	autoreconf
CONFIGURE_ARGS +=	--program-suffix=${SUFFIX}
CONFIGURE_ENV ?=	CPPFLAGS='-I${LOCALBASE}/include' \
			LDFLAGS='-L${LOCALBASE}/lib'

USE_LUAJIT ?=		Yes
.if ${MODULES:Mlang/lua}
.if ${USE_LUAJIT:L} == "yes" && ${PROPERTIES:Mluajit}
WANTLIB +=		luajit-5.1
LIB_DEPENDS +=		lang/luajit
CONFIGURE_ARGS +=	--with-lua=luajit
USE_NOBTCFI =		Yes
.else
WANTLIB +=		${MODLUA_WANTLIB}
LIB_DEPENDS +=		${MODLUA_LIB_DEPENDS}
CONFIGURE_ARGS +=	--with-lua=lua \
			--with-luaversion=${MODLUA_DEP_VERSION}
.endif
.endif

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

WRKDIST =		${WRKDIR}/love-${VERSION}

PORTROACH ?=		limit:^${VERSION}
