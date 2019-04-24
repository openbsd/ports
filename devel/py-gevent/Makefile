# $OpenBSD: Makefile,v 1.18 2019/04/24 20:00:03 sthen Exp $

COMMENT =		network library for easy and scalable concurrency

MODPY_EGG_VERSION =	1.4.0
DISTNAME =		gevent-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}

CATEGORIES =		devel
HOMEPAGE =		http://www.gevent.org/

FLAVORS =		python3
FLAVOR ?=

# MPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB} cares ev pthread

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

# Also needs objgraph, not yet imported.
NO_TEST =		Yes

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-coverage${MODPY_FLAVOR} \
			devel/py-coveralls${MODPY_FLAVOR} \
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
