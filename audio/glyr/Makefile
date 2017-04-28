# $OpenBSD: Makefile,v 1.12 2017/04/28 22:20:10 ajacoutot Exp $

COMMENT =	music related metadata searchengine

GH_ACCOUNT =	sahib
GH_PROJECT =	glyr
GH_TAGNAME =	1.0.10

CATEGORIES =	audio net
SHARED_LIBS +=	glyr	0.0 # 1.1

# LGPLv3
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c curl glib-2.0 gthread-2.0 intl sqlite3

MODULES =	devel/cmake

LIB_DEPENDS +=	net/curl \
		databases/sqlite3 \
		devel/glib2

NO_TEST =	Yes

.include <bsd.port.mk>
