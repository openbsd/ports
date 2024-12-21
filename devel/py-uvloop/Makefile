COMMENT =		fast, drop-in replacement for asyncio event loop

MODPY_DISTV =	0.20.0
REVISION =		1
DISTNAME =		uvloop-${MODPY_DISTV}
PKGNAME =		py-uvloop-${MODPY_DISTV}

CATEGORIES=		devel net

# Apache-2.0 or MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

MODULES =		lang/python
WANTLIB +=		pthread uv

CFLAGS =		-I${LOCALBASE}/include
LDFLAGS =		-L${LOCALBASE}/lib

BUILD_DEPENDS =		lang/cython

LIB_DEPENDS =		devel/libuv

TEST_DEPENDS =		security/py-openssl \
			sysutils/py-psutil \
			www/py-aiohttp

MODPY_PYTEST_ARGS =	--deselect "tests/test_dns.py::Test_UV_DNS::test_getaddrinfo_8" \
			--deselect "tests/test_dns.py::Test_UV_DNS::test_getaddrinfo_9" \
			--deselect "tests/test_dns.py::Test_UV_DNS::test_getaddrinfo_21" \
			--deselect "tests/test_fs_event.py" \
			--deselect "tests/test_regr1.py" \
			--deselect "tests/test_tcp.py::Test_UV_TCPSSL::test_write_to_closed_transport"

pre-patch:
	rm -r ${WRKSRC}/vendor
	rm ${WRKSRC}/uvloop/loop.c

pre-test:
	cd ${WRKSRC} && test -d uvloop && mv uvloop uvloop-bk || test -d uvloop-bk

.include <bsd.port.mk>
