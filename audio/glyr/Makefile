# $OpenBSD: Makefile,v 1.11 2016/09/23 09:16:52 sthen Exp $

COMMENT =	music related metadata searchengine

GH_ACCOUNT =	sahib
GH_PROJECT =	glyr
GH_TAGNAME =	1.0.9
REVISION =	0

CATEGORIES =	audio net
SHARED_LIBS +=	glyr	0.0 # 1.1

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c curl glib-2.0 gthread-2.0 intl sqlite3

MODULES =	devel/cmake

LIB_DEPENDS +=	net/curl \
		databases/sqlite3 \
		devel/glib2

NO_TEST =	Yes

.include <bsd.port.mk>
