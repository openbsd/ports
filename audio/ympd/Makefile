# $OpenBSD: Makefile,v 1.4 2017/05/27 19:57:05 ajacoutot Exp $

COMMENT=	Music Player Daemon web client

GH_ACCOUNT =	notandy
GH_PROJECT =	ympd
GH_TAGNAME =	v1.3.0
DISTNAME =	ympd-1.3.0

REVISION =	2

CATEGORIES =	audio www

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libmpdclient
WANTLIB +=	c crypto mpdclient pthread ssl

.include <bsd.port.mk>
