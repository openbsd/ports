COMMENT =		OGC API server implementation

MODPY_EGG_VERSION =	0.18.0
DISTNAME =		pygeoapi-${MODPY_EGG_VERSION}

CATEGORIES =		geo devel

HOMEPAGE =	https://pygeoapi.io/
# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes
# PyPi tarball doesnt ship tests subdir.. and missing pyld dep
MODPY_PI =		Yes
NO_TEST =	Yes
#MODPY_PYTEST =	Yes
#TEST_DEPENDS =	${RUN_DEPENDS} \
#		www/py-starlette${MODPY_FLAVOR} \
#		geo/py-owslib${MODPY_FLAVOR} \
#		databases/py-mongo${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-babel${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-jsonschema${MODPY_FLAVOR} \
		devel/py-pydantic${MODPY_FLAVOR} \
		devel/py-typing-extensions${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		geo/mapserver,-python \
		geo/py-geofilter${MODPY_FLAVOR} \
		geo/py-proj${MODPY_FLAVOR} \
		geo/py-rasterio${MODPY_FLAVOR}>=1.1.8p1 \
		geo/py-shapely${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-flask-cors${MODPY_FLAVOR}

post-install:
	rm -Rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/tests/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pygeoapi
	${SUBST_DATA} ${FILESDIR}/pygeoapi-config.yml.example \
		${PREFIX}/share/examples/pygeoapi/pygeoapi-config.yml

.include <bsd.port.mk>
