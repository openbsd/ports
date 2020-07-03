# $OpenBSD: Makefile,v 1.35 2020/07/03 21:13:09 sthen Exp $

COMMENT =		deduplicating backup program

MODPY_EGG_VERSION =	1.1.13
DISTNAME =		borgbackup-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.borgbackup.org/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	--ignore lib* --ignore src/borg/testsuite/benchmark.py
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

WANTLIB +=		${COMPILER_LIBCXX} ${MODPY_WANTLIB} b2 crypto lz4 m zstd

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS +=		${MODPY_LIB_DEPENDS} \
			archivers/lz4 \
			archivers/zstd \
			security/libb2
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}

# XXX pytest-benchmark is currently not picked up as plugin by pytest, as result
# benchmarking fails during 'make test'. For now ignore benchmarking (see
# MODPY_PYTEST_ARGS), and comment out py-test-benchmark as TDEP.
#TEST_DEPENDS +=		devel/py-test-benchmark${MODPY_FLAVOR}

TEST_ENV +=		PATH=${WRKINST}/usr/local/bin:${PATH} \
			PYTHONPATH=${WRKSRC}/src
PORTHOME =		${WRKDIR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 ${PREFIX}/man/man1/

pre-test:
	${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
