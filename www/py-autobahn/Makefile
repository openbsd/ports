COMMENT =	WebSocket client & server library, WAMP real-time framework

MODPY_DISTV =	22.7.1
DISTNAME =	autobahn-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION=	3

CATEGORIES =	www

HOMEPAGE =	https://github.com/crossbario/autobahn-python

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

# asyncio tests require extra dep (pytest.mark.asyncio)
# wamp tests using twisted have various problems which look like an
# incompatible version of twisted?
MODPY_PYTEST_ARGS = autobahn \
		--ignore autobahn/asyncio/test \
		--ignore autobahn/wamp/test

BUILD_DEPENDS =	devel/py-txaio>=18.8.1 \
		devel/py-cffi \
		devel/py-six

# the NVX module uses SSE
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS =	-Dnvx=1
.else
PKG_ARGS =	-Dnvx=0
MAKE_ENV =	AUTOBAHN_USE_NVX=0
.endif

TEST_DEPENDS =	devel/py-twisted \
		security/py-PyNaCl

.include <bsd.port.mk>
