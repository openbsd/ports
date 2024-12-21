COMMENT =	client library and CLI for Planet's public API

MODPY_DISTV =	2.10.0
DISTNAME =	planet-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	geo

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

RUN_DEPENDS +=	devel/py-click \
		devel/py-jsonschema \
		devel/py-tqdm \
		geo/py-geojson \
		www/py-jwt \
		www/py-httpx \
		www/py-requests \
		www/py-requests-futures
TEST_DEPENDS =	devel/py-mock \
		www/py-requests-mock \
		devel/py-tz

.include <bsd.port.mk>
