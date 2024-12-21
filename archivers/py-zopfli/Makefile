COMMENT =		cPython bindings for the zopfli compression library

MODPY_DISTV =	0.2.3
DISTNAME =		zopfli-${MODPY_DISTV}
PKGNAME =		py-zopfli-${MODPY_DISTV}
EXTRACT_SUFX =	.zip
REVISION =		1

CATEGORIES =		archivers

# Apache
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

LIB_DEPENDS =	archivers/zopfli
WANTLIB +=	m zopfli zopflipng
MAKE_ENV +=	USE_SYSTEM_ZOPFLI=1 \
		CPPFLAGS=-I${LOCALBASE}/include

.include <bsd.port.mk>
