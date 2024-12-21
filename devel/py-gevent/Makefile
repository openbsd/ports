COMMENT =		network library for easy and scalable concurrency

MODPY_DISTV =	24.11.1
REVISION =		1
DISTNAME =		gevent-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel
HOMEPAGE =		https://www.gevent.org/

# MPL
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += ${MODPY_WANTLIB} cares ev pthread uv

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/libev:configure \
			devel/py-cffi \
			devel/py-greenlet \
			lang/cython
LIB_DEPENDS =		devel/libev \
			devel/libuv \
			net/libcares
RUN_DEPENDS =		devel/py-greenlet \
			devel/py-zopeevent \
			devel/py-zopeinterface

MAKE_ENV =		GEVENTSETUP_EMBED_CARES=0 \
			GEVENTSETUP_EMBED_LIBEV=0 \
			GEVENTSETUP_EMBED_LIBUV=0
CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib

pre-patch:
	cp ${WRKDIR}/devel/libev/libev-*/config.h ${WRKSRC}/deps/libev/config.h

post-install:
	rm -Rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/greentest

# depends on self for now, but upstream intends to pass PYTHONPATH
# to subproc's in the future which should obviate the need for this
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_DISTV} \
			devel/py-coverage \
			devel/py-coveralls \
			devel/py-objgraph \
			sysutils/py-psutil \
			www/py-requests

do-test:
	sed -i 's,^HAVE_SOCKET_UDPLITE = has.*,HAVE_SOCKET_UDPLITE = false,' \
		${WRKSRC}/src/greentest/*/test_socket.py

	cd ${WRKSRC}; ${MODPY_BIN} -m gevent.tests

.include <bsd.port.mk>
