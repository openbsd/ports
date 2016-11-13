# $OpenBSD: Makefile,v 1.1.1.1 2016/11/13 19:35:11 landry Exp $

COMMENT=	Music Player Daemon web client

GH_ACCOUNT =	notandy
GH_PROJECT =	ympd
GH_TAGNAME =	v1.3.0
DISTNAME =	ympd-1.3.0

CATEGORIES =	audio www

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libmpdclient
WANTLIB +=	c crypto mpdclient pthread ssl

.include <bsd.port.mk>
