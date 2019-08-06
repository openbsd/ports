# $OpenBSD: Makefile,v 1.7 2019/08/06 18:45:24 sthen Exp $

COMMENT =	share your terminal over the web

GH_ACCOUNT =	tsl0922
GH_PROJECT =	ttyd
GH_TAGNAME =	1.5.2

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
