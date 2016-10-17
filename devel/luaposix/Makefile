# $OpenBSD: Makefile,v 1.22 2016/10/17 21:37:15 jca Exp $

COMMENT=	posix library for the lua language
V=		33.4.0
DISTNAME=	luaposix-${V}
EPOCH=		0
CATEGORIES=	devel

GH_ACCOUNT=	luaposix
GH_PROJECT=	luaposix
GH_TAGNAME=	release-v${V}

MAINTAINER=	Adam Wolk <awolk@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/lua

# lua51 needs the bit32 library
.if empty(FLAVOR)
RUN_DEPENDS=		devel/lua-bit32
.endif

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV+=		LUA=${MODLUA_BIN}

.include <bsd.port.mk>
