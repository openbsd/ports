# $OpenBSD: Makefile,v 1.8 2015/06/17 18:32:54 jasper Exp $

COMMENT =	music related metadata searchengine

GH_ACCOUNT =	sahib
GH_PROJECT =	glyr
GH_TAGNAME =	1.0.8

DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES =	audio net
SHARED_LIBS +=	glyr	0.0 # 1.1

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	devel/cmake \
		devel/gettext
LIB_DEPENDS +=	net/curl \
		devel/glib2
NO_TEST =	Yes

WANTLIB +=	c curl glib-2.0 gthread-2.0 pthread sqlite3

.include <bsd.port.mk>
