COMMENT =		OGC API server implementation

MODPY_DISTV =	0.18.0
REVISION =		2
DISTNAME =		pygeoapi-${MODPY_DISTV}

CATEGORIES =		geo devel

HOMEPAGE =	https://pygeoapi.io/
# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =	setuptools
# PyPi tarball doesnt ship tests subdir.. and missing pyld dep
MODPY_PI =		Yes
NO_TEST =	Yes
#MODPY_PYTEST =	Yes
#TEST_DEPENDS =	${RUN_DEPENDS} \
#		www/py-starlette \
#		geo/py-owslib \
#		databases/py-mongo
RUN_DEPENDS =	devel/py-babel \
		devel/py-click \
		devel/py-dateutil \
		devel/py-jsonschema \
		devel/py-pydantic \
		devel/py-typing-extensions \
		devel/py-tz \
		geo/mapserver,-python \
		geo/py-geofilter \
		geo/py-proj \
		geo/py-rasterio>=1.1.8p1 \
		geo/py-shapely \
		textproc/py-yaml \
		sysutils/py-filelock \
		www/py-requests \
		www/py-flask \
		www/py-flask-cors

post-install:
	rm -Rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/tests/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pygeoapi
	${SUBST_DATA} ${FILESDIR}/pygeoapi-config.yml.example \
		${PREFIX}/share/examples/pygeoapi/pygeoapi-config.yml

.include <bsd.port.mk>
