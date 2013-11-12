# $OpenBSD: Makefile,v 1.2 2013/11/12 15:00:25 sthen Exp $

COMMENT =	music related metadata searchengine
GH_VER =	1.0.1
DISTNAME =	glyr-${GH_VER}
CATEGORIES =	audio net
SHARED_LIBS +=	glyr	0.0 # 1.1

HOMEPAGE =	https://github.com/sahib/glyr

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =	https://github.com/sahib/glyr/archive/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

MODULES =	devel/cmake \
		devel/gettext
LIB_DEPENDS +=	net/curl \
		devel/glib2
NO_TEST =	Yes

WANTLIB +=	c curl glib-2.0 gthread-2.0 sqlite3

.include <bsd.port.mk>
