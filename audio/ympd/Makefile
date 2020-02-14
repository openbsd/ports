# $OpenBSD: Makefile,v 1.7 2020/02/14 11:11:32 sthen Exp $

COMMENT=	Music Player Daemon web client

GH_ACCOUNT =	notandy
GH_PROJECT =	ympd
GH_TAGNAME =	v1.3.0
REVISION =	3

CATEGORIES =	audio www

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

LIB_DEPENDS =	audio/libmpdclient
WANTLIB +=	c crypto mpdclient pthread ssl

.include <bsd.port.mk>
