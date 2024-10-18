COMMENT =		module for interacting with various Steam features

PKGNAME =		py-steam-1.4.4pl0
REVISION =		1
DIST_TUPLE +=		github rfht py-steam \
			e26d2eb52c90dc2c07cc88ea910d59bf873d330d .
CATEGORIES =		games
HOMEPAGE =		https://github.com/ValvePython/steam

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		converters/py-vdf${MODPY_FLAVOR} \
			devel/py-cachetools${MODPY_FLAVOR} \
			devel/py-gevent${MODPY_FLAVOR} \
			devel/py-gevent-eventemitter${MODPY_FLAVOR} \
			devel/py-protobuf${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			security/py-cryptodomex${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

# tests not included in pypi tarball
NO_TEST =		Yes

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
