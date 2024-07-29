COMMENT =		pure Python parser implementation of OGC filtering standards

MODPY_EGG_VERSION =	0.2.4
DISTNAME =		pygeofilter-${MODPY_EGG_VERSION}
PKGNAME =		py-geofilter-${MODPY_EGG_VERSION}

CATEGORIES =		geo devel

HOMEPAGE =	https://github.com/geopython/pygeofilter
# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVORS =		python3
FLAVOR ?=		python3

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
#all tests have missing deps
#NO_TEST =	Yes
RUN_DEPENDS =	textproc/py-lark${MODPY_FLAVOR} \
		textproc/py-dateparser${MODPY_FLAVOR} \
		geo/py-geoif${MODPY_FLAVOR} \
		geo/py-shapely${MODPY_FLAVOR}

.include <bsd.port.mk>
