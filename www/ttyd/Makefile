# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:06 sthen Exp $

COMMENT =	share your terminal over the web

GH_ACCOUNT =	tsl0922
GH_PROJECT =	ttyd
GH_TAGNAME =	1.4.0

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
