# $OpenBSD: Makefile,v 1.17 2019/04/24 16:34:42 sthen Exp $

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

NO_TEST =		Yes

WRKBUILD =		${WRKSRC}/src

pre-patch:
	cp ${WRKDIR}/devel/libev/libev-*/config.h ${WRKSRC}/deps/libev/config.h

post-build:
	rm -Rf ${WRKBUILD}/tempdir

post-install:
	rm -Rf ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/greentest

.include <bsd.port.mk>
