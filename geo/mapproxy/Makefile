COMMENT =	GIS WMTS/TMS tile caching server

MODPY_DISTV =	6.0.1
DISTNAME =		mapproxy-${MODPY_DISTV}

CATEGORIES =	geo www

HOMEPAGE =	http://www.mapproxy.org/
# apache v2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MODULES =	lang/python
MODPY_PI =	yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	geo/py-proj \
		geo/py-shapely \
		devel/py-jsonschema \
		devel/py-future \
		devel/py-dateutil \
		www/py-werkzeug \
		textproc/py-yaml \
		textproc/py-lxml \
		graphics/py-Pillow

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-nose \
		geo/gdal,-python \
		www/py-requests \
		www/py-webtest
# some tests need mocker from https://labix.org/mocker

.include <bsd.port.mk>
