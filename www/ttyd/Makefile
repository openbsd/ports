# $OpenBSD: Makefile,v 1.6 2019/08/04 17:41:17 sthen Exp $

COMMENT =	share your terminal over the web

GH_ACCOUNT =	tsl0922
GH_PROJECT =	ttyd
#GH_TAGNAME =	1.5.1
GH_COMMIT =	87a705223fd07390018811a5a220b862fb3678b3
DISTNAME =	ttyd-1.5.1pl20190904

CATEGORIES =	www

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto json-c m pthread ssl util websockets z

MODULES =		devel/cmake
# vim is needed for xxd
BUILD_DEPENDS =		editors/vim,-main
LIB_DEPENDS =		www/libwebsockets \
			devel/json-c

.include <bsd.port.mk>
