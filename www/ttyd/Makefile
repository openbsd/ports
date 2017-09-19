# $OpenBSD: Makefile,v 1.1.1.1 2017/09/19 07:49:09 phessler Exp $

COMMENT =	share your terminal over the web

GH_ACCOUNT =	tsl0922
GH_PROJECT =	ttyd
GH_TAGNAME =	1.3.3

CATEGORIES =	www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto json-c pthread ssl util websockets

MODULES =		devel/cmake
# vim is needed for xxd
BUILD_DEPENDS =		editors/vim,-main
LIB_DEPENDS =		www/libwebsockets \
			devel/json-c

NO_TEST =		Yes

.include <bsd.port.mk>
