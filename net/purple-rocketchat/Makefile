# $OpenBSD: Makefile,v 1.3 2021/01/19 14:23:57 landry Exp $

COMMENT =	Rocket.chat support for Pidgin

GH_ACCOUNT=	EionRobb
GH_PROJECT=	purple-rocketchat
GH_COMMIT=	62090bc61f80fd0c4ea18319b6394990d9b0278a
V =		0.20210119
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
