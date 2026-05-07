COMMENT =		deduplicating backup program

DISTNAME =		borgbackup-${MODPY_DISTV}

CATEGORIES =		sysutils

HOMEPAGE =		https://www.borgbackup.org/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB +=		lz4

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes
MODPY_PYTEST_ARGS =	build/lib.openbsd-${OSREV}-${ARCH}-cpython-${MODPY_MAJORMINOR}

LIB_DEPENDS +=		archivers/lz4
BUILD_DEPENDS +=	devel/py-pkgconfig \
			lang/cython
RUN_DEPENDS +=		net/py-msgpack \
			sysutils/py-packaging
TEST_DEPENDS +=		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-test-benchmark

PORTHOME =		${WRKDIR}
