COMMENT =	Skype protocol plugin for Pidgin

V = 		1.7

PKGNAME =	pidgin-skypeweb-${V}

GH_ACCOUNT =	EionRobb
GH_PROJECT =	skype4pidgin
GH_TAGNAME =	${V}

CATEGORIES =	net

HOMEPAGE =	https://github.com/EionRobb/skype4pidgin/tree/master/skypeweb

MAINTAINER =	Kevin Lo <kevlo@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB +=	gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0 purple

MODULES =	devel/cmake

LIB_DEPENDS =	devel/json-glib \
		net/pidgin,-libpurple
RUN_DEPENDS =	net/pidgin

NO_TEST =	Yes

WRKSRC =	${WRKDIST}/skypeweb

.include <bsd.port.mk>
