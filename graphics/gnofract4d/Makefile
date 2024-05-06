COMMENT =		fractal image generator

MODPY_EGG_VERSION =	4.3

SITES =			https://github.com/fract4d/gnofract4d/releases/download/v${MODPY_EGG_VERSION}/
DISTNAME =		gnofract4d-${MODPY_EGG_VERSION}
REVISION =		3

CATEGORIES =		graphics

HOMEPAGE =		https://github.com/fract4d/gnofract4d

# 3-clause BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} m z png jpeg

COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS +=	devel/glib2

LIB_DEPENDS =		graphics/png \
			graphics/jpeg

RUN_DEPENDS +=		devel/desktop-file-utils \
			devel/py-gobject3${MODPY_FLAVOR} \
			graphics/py-cairo${MODPY_FLAVOR} \
			misc/shared-mime-info \
			x11/gtk+3 \
			x11/gtk+4,-guic

NO_TEST =		Yes

.include <bsd.port.mk>
