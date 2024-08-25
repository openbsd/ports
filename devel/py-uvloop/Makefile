COMMENT =		fast, drop-in replacement for asyncio event loop

MODPY_EGG_VERSION =	0.20.0
DISTNAME =		uvloop-${MODPY_EGG_VERSION}
PKGNAME =		py-uvloop-${MODPY_EGG_VERSION}

CATEGORIES=		devel net

# Apache-2.0 or MIT
PERMIT_PACKAGE =	Yes

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

MODULES =		lang/python
WANTLIB +=		pthread uv

CFLAGS =		-I${LOCALBASE}/include
LDFLAGS =		-L${LOCALBASE}/lib

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =		devel/libuv

TEST_DEPENDS =		security/py-openssl${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-aiohttp${MODPY_FLAVOR}

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
