# $OpenBSD: Makefile,v 1.15 2017/09/14 13:00:54 phessler Exp $

COMMENT =		network library for easy and scalable concurrency

MODPY_EGG_VERSION =	1.2.2
DISTNAME =		gevent-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>
REVISION =		1

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
TEST_DEPENDS =		${RUN_DEPENDS} \
			lang/python/${MODPY_VERSION},-tests \
			sysutils/py-psutil${MODPY_FLAVOR}

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
