COMMENT =		asyncio bridge to the standard sqlite3 module

MODPY_EGG_VERSION =	0.20.0

DISTNAME =		aiosqlite-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://aiosqlite.omnilib.dev/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		flit_core

# tests not shipped as part of pypi's artifacts
NO_TEST =		Yes

.include <bsd.port.mk>
