COMMENT =		asyncio bridge to the standard sqlite3 module

MODPY_DISTV =		0.22.0
DISTNAME =		aiosqlite-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		databases

HOMEPAGE =		https://aiosqlite.omnilib.dev/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core
MODPY_PI =		Yes

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	${MODPY_BIN} -m aiosqlite.tests

.include <bsd.port.mk>
