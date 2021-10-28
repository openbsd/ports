# $OpenBSD: Makefile,v 1.4 2021/10/28 06:16:32 landry Exp $

COMMENT =	Rocket.chat support for Pidgin

GH_ACCOUNT=	EionRobb
GH_PROJECT=	purple-rocketchat
GH_COMMIT=	5c08ad0eacd39914d27b692d7eb42a94a991fb4c
V =		0.20211002
DISTNAME =	${GH_PROJECT}-$V
CATEGORIES =	net

# GPLv3
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =	net/pidgin,-libpurple \
		devel/json-glib \
		textproc/discount>=2.2.4p0

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl json-glib-1.0
WANTLIB += markdown pcre pthread purple z

USE_GMAKE =	Yes

.include <bsd.port.mk>
