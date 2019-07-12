# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:00 sthen Exp $

COMMENT =		fractal image generator

MODPY_EGG_VERSION =	3.14.1
DISTNAME =		gnofract4d-${MODPY_EGG_VERSION}

GH_PROJECT =		gnofract4d
GH_ACCOUNT =		edyoung
GH_TAGNAME =		V_${MODPY_EGG_VERSION:S/./_/g}
REVISION =		4

CATEGORIES =		graphics

HOMEPAGE =		http://gnofract4d.sourceforge.net

# 3-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += m png pthread z ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python

LIB_DEPENDS =		graphics/png

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gnome/yelp \
			x11/py-gtk2

NO_TEST =		Yes

.include <bsd.port.mk>
