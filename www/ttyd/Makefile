# $OpenBSD: Makefile,v 1.3 2018/04/26 18:05:59 phessler Exp $

COMMENT =	share your terminal over the web

GH_ACCOUNT =	tsl0922
GH_PROJECT =	ttyd
GH_TAGNAME =	1.4.0

CATEGORIES =	www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c crypto json-c m pthread ssl util websockets z

MODULES =		devel/cmake
# vim is needed for xxd
BUILD_DEPENDS =		editors/vim,-main
LIB_DEPENDS =		www/libwebsockets \
			devel/json-c

.include <bsd.port.mk>
