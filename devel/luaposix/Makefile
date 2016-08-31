# $OpenBSD: Makefile,v 1.21 2016/08/31 10:11:52 awolk Exp $

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

.if "${MODLUA_VERSION}" == "5.1"
RUN_DEPENDS=		devel/lua-bit32
.endif

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV+=		LUA=${MODLUA_BIN}

.include <bsd.port.mk>
