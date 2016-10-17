# $OpenBSD: Makefile,v 1.23 2016/10/17 21:39:23 jca Exp $

COMMENT=	posix library for the lua language
V=		33.4.0
DISTNAME=	luaposix-${V}
EPOCH=		0
REVISION=	0
CATEGORIES=	devel

GH_ACCOUNT=	luaposix
GH_PROJECT=	luaposix
GH_TAGNAME=	release-v${V}

MAINTAINER=	Adam Wolk <awolk@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

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
