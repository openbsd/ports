COMMENT =	GIS WMTS/TMS tile caching server

MODPY_EGG_VERSION =	3.0.1
DISTNAME =		MapProxy-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:L}

CATEGORIES =	geo www

HOMEPAGE =	http://www.mapproxy.org/
# apache v2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MODULES =	lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	geo/py-proj${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-future${MODPY_FLAVOR} \
		www/py-werkzeug${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		graphics/py-Pillow${MODPY_FLAVOR}

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-nose${MODPY_FLAVOR} \
		geo/py-shapely${MODPY_FLAVOR} \
		geo/gdal,-python${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-webtest${MODPY_FLAVOR}
# some tests need mocker from https://labix.org/mocker

.include <bsd.port.mk>
