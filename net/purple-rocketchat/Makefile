COMMENT =	Rocket.chat support for Pidgin

GH_ACCOUNT=	EionRobb
GH_PROJECT=	purple-rocketchat
GH_COMMIT=	484e5bf9c7579b681f297fea7a1fa36c91a54baf
V =		0.20220130
DISTNAME =	${GH_PROJECT}-$V
CATEGORIES =	net
REVISION =	0

# GPLv3
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =	net/pidgin,-libpurple \
		devel/json-glib \
		textproc/discount>=2.2.4p0

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl json-glib-1.0
WANTLIB += markdown pcre2-8 pthread purple z

USE_GMAKE =	Yes

.include <bsd.port.mk>
