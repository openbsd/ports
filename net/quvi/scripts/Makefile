# $OpenBSD: Makefile,v 1.14 2013/12/09 04:17:37 bentley Exp $

PKG_ARCH =      *

COMMENT =	scripts libquvi uses for parsing the media details

V =		0.9.20131130
DISTNAME =	libquvi-scripts-${V}
SUBST_VARS +=	V

MODULES =	lang/lua

RUN_DEPENDS =	net/luasocket

CONFIGURE_ARGS=	--with-nsfw

.include <bsd.port.mk>
