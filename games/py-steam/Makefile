COMMENT =		module for interacting with various Steam features

PKGNAME =		py-steam-1.4.4pl0
REVISION =		2
DIST_TUPLE +=		github rfht py-steam \
			e26d2eb52c90dc2c07cc88ea910d59bf873d330d .
CATEGORIES =		games
HOMEPAGE =		https://github.com/ValvePython/steam

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		converters/py-vdf \
			devel/py-cachetools \
			devel/py-gevent \
			devel/py-gevent-eventemitter \
			devel/py-protobuf \
			devel/py-six \
			security/py-cryptodomex \
			www/py-requests

# tests not included in pypi tarball
NO_TEST =		Yes

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
