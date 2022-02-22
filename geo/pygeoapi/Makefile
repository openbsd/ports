# $OpenBSD: Makefile,v 1.13 2022/02/22 04:22:20 bket Exp $

COMMENT =		OGC API server implementation

MODPY_EGG_VERSION =	0.11.0
REVISION =		0
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
#		databases/py-mongo${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-click${MODPY_FLAVOR} \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-tz${MODPY_FLAVOR} \
		geo/py-proj${MODPY_FLAVOR} \
		geo/py-rasterio${MODPY_FLAVOR}>=1.1.8p1 \
		textproc/py-yaml${MODPY_FLAVOR} \
		textproc/py-unicodecsv${MODPY_FLAVOR} \
		www/py-flask${MODPY_FLAVOR} \
		www/py-flask-cors${MODPY_FLAVOR}

post-install:
	rm -Rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/tests/

.include <bsd.port.mk>
