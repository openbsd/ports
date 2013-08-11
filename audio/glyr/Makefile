# $OpenBSD: Makefile,v 1.1.1.1 2013/08/11 14:59:54 landry Exp $

COMMENT =	music related metadata searchengine
V =		1.0.1
DISTNAME =	glyr-${V}
CATEGORIES =	audio net
SHARED_LIBS +=	glyr	0.0 # 1.1

HOMEPAGE =	https://github.com/sahib/glyr

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://github.com/sahib/glyr/archive/${V}.tar.gz?bleh=/

MODULES =	devel/cmake \
		devel/gettext
LIB_DEPENDS +=	net/curl \
		devel/glib2
NO_TEST =	Yes

WANTLIB +=	c curl glib-2.0 gthread-2.0 sqlite3

.include <bsd.port.mk>
