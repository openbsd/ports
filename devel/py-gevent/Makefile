# $OpenBSD: Makefile,v 1.10 2017/01/17 02:57:17 czarkoff Exp $

COMMENT =		network library for easy and scalable concurrency

MODPY_EGG_VERSION =	1.2.1
DISTNAME =		gevent-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

CATEGORIES =		devel
HOMEPAGE =		http://www.gevent.org/

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
			devel/py-cffi \
			lang/cython
LIB_DEPENDS =		devel/libev \
			net/libcares
RUN_DEPENDS =		devel/py-greenlet
TEST_DEPENDS =		${RUN_DEPENDS} \
			lang/python/${MODPY_VERSION},-tests \
			sysutils/py-psutil

MAKE_ENV =		CARES_EMBED=0 LIBEV_EMBED=0
TEST_ENV =		PYTHONPATH="${WRKBUILD}"
CFLAGS +=		-I${LOCALBASE}/include
LDFLAGS +=		-L${LOCALBASE}/lib

WRKBUILD =		${WRKSRC}/src

pre-patch:
	cp ${WRKDIR}/devel/libev/libev-*/config.h ${WRKSRC}/deps/libev/config.h

post-build:
	rm -Rf ${WRKBUILD}/tempdir

post-install:
	rm -Rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/greentest

do-test:
	cd ${WRKBUILD}/greentest && ${SETENV} ${ALL_TEST_ENV} ${MODPY_BIN} \
		testrunner.py --config known_failures.py

.include <bsd.port.mk>
