COMMENT =		cPython bindings for the zopfli compression library

MODPY_EGG_VERSION =	0.2.3
DISTNAME =		zopfli-${MODPY_EGG_VERSION}
PKGNAME =		py-zopfli-${MODPY_EGG_VERSION}
EXTRACT_SUFX =	.zip
REVISION =		0

CATEGORIES =		archivers


# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

FLAVORS =		python3
FLAVOR =		python3

LIB_DEPENDS =	archivers/zopfli
WANTLIB +=	m zopfli zopflipng
MAKE_ENV +=	USE_SYSTEM_ZOPFLI=1 \
		CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
