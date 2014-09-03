# $OpenBSD: Makefile,v 1.5 2014/09/03 19:23:54 jasper Exp $

COMMENT =	music related metadata searchengine

GH_ACCOUNT =	sahib
GH_PROJECT =	glyr
GH_TAGNAME =	1.0.2
GH_COMMIT =	e9e3423072ae032cb41107087a8bf92547e81f95

DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES =	audio net
SHARED_LIBS +=	glyr	0.0 # 1.1

HOMEPAGE =	https://github.com/sahib/glyr

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	devel/cmake \
		devel/gettext
LIB_DEPENDS +=	net/curl \
		devel/glib2
NO_TEST =	Yes

WANTLIB +=	c curl glib-2.0 gthread-2.0 pthread sqlite3

.include <bsd.port.mk>
