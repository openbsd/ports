# $OpenBSD: Makefile,v 1.13 2013/11/11 14:56:46 ajacoutot Exp $

PKG_ARCH =      *

COMMENT =	scripts libquvi uses for parsing the media details

V =		0.9.20131104
DISTNAME =	libquvi-scripts-${V}
SUBST_VARS +=	V

MODULES =	lang/lua

RUN_DEPENDS =	net/luasocket

CONFIGURE_ARGS=	--with-nsfw

.include <bsd.port.mk>
