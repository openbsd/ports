# $OpenBSD: Makefile,v 1.4 2014/07/10 11:06:15 rpe Exp $

COMMENT =	music related metadata searchengine

GH_ACCOUNT =	sahib
GH_PROJECT =	glyr
GH_TAGNAME =	1.0.1
GH_COMMIT =	b5a680035b4d2a816c691d313e9092646f27f16f

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

WANTLIB +=	c curl glib-2.0 gthread-2.0 sqlite3

.include <bsd.port.mk>
