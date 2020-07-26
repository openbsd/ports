# $OpenBSD: Makefile,v 1.24 2020/07/26 18:19:30 jasper Exp $

COMMENT =		network library for easy and scalable concurrency

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		gevent-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
REVISION =		2

CATEGORIES =		devel
HOMEPAGE =		https://www.gevent.org/

# MPL
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} cares ev pthread

FLAVORS =		python3
FLAVOR ?=

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_BUILDARGS =	--build-base="${WRKBUILD}" \
				--build-lib="${WRKBUILD}" \
				--build-temp="tempdir"

BUILD_DEPENDS =		devel/libev:configure \
			devel/py-cffi${MODPY_FLAVOR} \
			lang/cython${MODPY_FLAVOR}
LIB_DEPENDS =		devel/libev \
			net/libcares
RUN_DEPENDS =		devel/py-greenlet${MODPY_FLAVOR}

MAKE_ENV =		CARES_EMBED=0 LIBEV_EMBED=0
CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib

WRKBUILD =		${WRKSRC}/src

pre-patch:
	cp ${WRKDIR}/devel/libev/libev-*/config.h ${WRKSRC}/deps/libev/config.h

post-build:
	rm -Rf ${WRKBUILD}/tempdir

post-install:
	rm -Rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/greentest

# depends on self for now, but upstream intends to pass PYTHONPATH
# to subproc's in the future which should obviate the need for this
TEST_DEPENDS =		${BASE_PKGPATH}=${MODPY_EGG_VERSION} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-coveralls${MODPY_FLAVOR} \
			devel/py-objgraph${MODPY_FLAVOR} \
			devel/py-zopeevent${MODPY_FLAVOR} \
			devel/py-zopeinterface${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-futures \
			devel/py-mock
.endif

do-test:
	cd ${WRKSRC}; env PYTHONPATH=src ${MODPY_BIN} -m gevent.tests

.include <bsd.port.mk>
