COMMENT =		fast, drop-in replacement for asyncio event loop

MODPY_DISTV =		0.22.1
DISTNAME =		uvloop-${MODPY_DISTV}
PKGNAME =		py-uvloop-${MODPY_DISTV}

CATEGORIES=		devel net

# Apache-2.0 or MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

# fails with gcc, which doesn't like the trailing "":
# cc -O2 -pipe -I/usr/local/include -fPIC -I/usr/local/include/python3.12 -c uvloop/loop.c -o build/temp.openbsd-7.8-amd64-cpython-312/uvloop/loop.o ""
COMPILER =		base-clang
COMPILER_LANGS =	c

MODULES =		lang/python
WANTLIB +=		pthread uv

CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS =		-L${LOCALBASE}/lib

# don't override opt level in CFLAGS
MAKE_ENV =		UVLOOP_OPT_CFLAGS=

BUILD_DEPENDS =		lang/cython

LIB_DEPENDS =		devel/libuv

TEST_DEPENDS =		security/py-openssl \
			sysutils/py-psutil \
			www/py-aiohttp

MODPY_TEST_LINK_SO =	Yes
MODPY_PYTEST_ARGS +=	--deselect tests/test_fs_event.py # segfaults
MODPY_PYTEST_ARGS +=	--deselect tests/test_regr1.py # hangs

.include <bsd.port.mk>
