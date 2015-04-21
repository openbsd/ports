# $OpenBSD: Makefile,v 1.5 2015/04/21 18:24:22 sthen Exp $

COMMENT =		fractal image generator

DISTNAME =		gnofract4d-${MODPY_EGG_VERSION}
MODPY_EGG_VERSION =	3.14
REVISION =		1

CATEGORIES =		graphics

HOMEPAGE =		http://gnofract4d.sourceforge.net

# 3-clause BSD
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += m png pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=gnofract4d/}

BUILD_DEPENDS =		graphics/png
MODULES =		lang/python
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/py-gtk2

NO_TEST =		Yes

.include <bsd.port.mk>
