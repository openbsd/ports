COMMENT =	WebSocket client & server library, WAMP real-time framework

MODPY_DISTV =	24.4.2
DISTNAME =	autobahn-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www

HOMEPAGE =	https://github.com/crossbario/autobahn-python

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

RUN_DEPENDS =	devel/py-txaio \
		security/py-cryptography \
		www/py-hyperlink \
		devel/py-setuptools # uses pkg_resources

BUILD_DEPENDS =	devel/py-txaio \
		devel/py-cffi

# the NVX module uses SSE
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS =	-Dnvx=1
.else
PKG_ARGS =	-Dnvx=0
MAKE_ENV =	AUTOBAHN_USE_NVX=0
.endif

# test collection fails if test_wamp_cryptosign.py is not ignored
# some failures in autobahn/wamp/test/test_wamp_serializer.py
MODPY_PYTEST_ARGS = autobahn \
		    --ignore autobahn/wamp/test/test_wamp_cryptosign.py

TEST_DEPENDS =	devel/py-test-asyncio \
		devel/py-twisted \
		net/py-msgpack \
		security/py-PyNaCl \
		security/py-argon2-cffi \
		security/py-passlib \
		textproc/py-ujson

.include <bsd.port.mk>
