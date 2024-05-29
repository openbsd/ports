COMMENT =		convert PDF to a PIL Image list

MODPY_EGG_VERSION =	1.17.0
DISTNAME =		pdf2image-${MODPY_EGG_VERSION}
PKGNAME =		py-pdf2image-${MODPY_EGG_VERSION}

CATEGORIES =		print

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

NO_TEST =		Yes

RUN_DEPENDS +=		print/poppler,-utils \
			graphics/py-Pillow${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
