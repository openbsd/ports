COMMENT =		convert PDF to a PIL Image list

MODPY_DISTV =	1.17.0
DISTNAME =		pdf2image-${MODPY_DISTV}
PKGNAME =		py-pdf2image-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		print

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

NO_TEST =		Yes

RUN_DEPENDS +=		print/poppler,-utils \
			graphics/py-Pillow

.include <bsd.port.mk>
