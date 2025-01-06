COMMENT =		pure Python parser implementation of OGC filtering standards

MODPY_DISTV =	0.3.1
DISTNAME =		pygeofilter-${MODPY_DISTV}
PKGNAME =		py-geofilter-${MODPY_DISTV}

CATEGORIES =		geo devel

HOMEPAGE =	https://github.com/geopython/pygeofilter

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes
#all tests have missing deps
#NO_TEST =	Yes
RUN_DEPENDS =	textproc/py-lark \
		textproc/py-dateparser \
		geo/py-geoif \
		geo/py-shapely

.include <bsd.port.mk>
