# $OpenBSD: Makefile,v 1.10 2017/09/22 21:30:32 sthen Exp $

COMMENT =		fractal image generator

MODPY_EGG_VERSION =	3.14.1
DISTNAME =		gnofract4d-${MODPY_EGG_VERSION}

GH_PROJECT =		gnofract4d
GH_ACCOUNT =		edyoung
GH_TAGNAME =		V_${MODPY_EGG_VERSION:S/./_/g}
REVISION =		1

CATEGORIES =		graphics

HOMEPAGE =		http://gnofract4d.sourceforge.net

# 3-clause BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += m png pthread z ${COMPILER_LIBCXX}

MODULES =		lang/python

LIB_DEPENDS =		graphics/png

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gnome/yelp \
			x11/py-gtk2

NO_TEST =		Yes

.include <bsd.port.mk>
