# $OpenBSD: Makefile,v 1.25 2019/07/12 20:44:42 sthen Exp $

COMMENT=	posix library for the lua language
V=		33.4.0
DISTNAME=	luaposix-${V}
EPOCH=		0
REVISION=	1
CATEGORIES=	devel

GH_ACCOUNT=	luaposix
GH_PROJECT=	luaposix
GH_TAGNAME=	release-v${V}

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/lua

FLAVORS=		lua52 lua53
FLAVOR?=

# lua51 needs the bit32 library
.if empty(FLAVOR)
RUN_DEPENDS=		devel/lua-bit32
.endif

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV+=		LUA=${MODLUA_BIN}

post-install:
	mv ${PREFIX}/share/doc/luaposix ${MODLUA_DOCDIR}

.include <bsd.port.mk>
