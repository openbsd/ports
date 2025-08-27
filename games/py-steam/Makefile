COMMENT =		module for interacting with various Steam features

PKGNAME =		py-steam-1.5.1
DIST_TUPLE +=		github CFTools-Software-GmbH ValvePython-steam \
			6e78b9c34141eaa3c00b785f12e02f47244df20c .
CATEGORIES =		games

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		archivers/py-zstd \
			converters/py-vdf \
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
