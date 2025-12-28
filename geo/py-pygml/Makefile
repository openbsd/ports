COMMENT =		pure python parser and encoder for OGC GML Geometries

MODPY_DISTV =		0.3.2
DISTNAME =		pygml-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		geo devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes
RUN_DEPENDS =	textproc/py-lxml

post-install:
	rm -Rf ${WRKINST}${MODPY_SITEPKG}/tests

.include <bsd.port.mk>
