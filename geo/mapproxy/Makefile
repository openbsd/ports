COMMENT =	GIS WMTS/TMS tile caching server

MODPY_DISTV =	3.1.3
DISTNAME =		MapProxy-${MODPY_DISTV}
PKGNAME =		${DISTNAME:L}
REVISION =		0

CATEGORIES =	geo www

HOMEPAGE =	http://www.mapproxy.org/
# apache v2
PERMIT_PACKAGE =	Yes

MAINTAINER =	Landry Breuil <landry@openbsd.org>

MODULES =	lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	geo/py-proj \
		devel/py-jsonschema \
		devel/py-future \
		www/py-werkzeug \
		textproc/py-yaml \
		textproc/py-lxml \
		graphics/py-Pillow

TEST_DEPENDS =	${RUN_DEPENDS} \
		devel/py-nose \
		geo/py-shapely \
		geo/gdal,-python \
		www/py-requests \
		www/py-webtest
# some tests need mocker from https://labix.org/mocker

.include <bsd.port.mk>
