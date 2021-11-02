# $OpenBSD: Makefile,v 1.42 2021/11/02 00:02:21 sthen Exp $

COMMENT =		deduplicating backup program

MODPY_EGG_VERSION =	1.1.17
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

WANTLIB +=		${COMPILER_LIBCXX} b2 crypto lz4 m xxhash zstd

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS +=		archivers/lz4 \
			archivers/zstd \
			security/libb2 \
			sysutils/xxhash
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS +=		sysutils/py-packaging${MODPY_FLAVOR}

# XXX pytest-benchmark is currently not picked up as plugin by pytest, as result
# benchmarking fails during 'make test'. For now ignore benchmarking (see
# MODPY_PYTEST_ARGS), and comment out py-test-benchmark as TDEP.
#TEST_DEPENDS +=		devel/py-test-benchmark${MODPY_FLAVOR}

TEST_ENV +=		PATH=${WRKINST}/usr/local/bin:${PATH} \
			PYTHONPATH=${WRKSRC}/src
PORTHOME =		${WRKDIR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 ${PREFIX}/man/man1/

	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/scripts/shell_completions/bash/borg \
		${PREFIX}/share/bash-completion/completions/

	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/completions/
	${INSTALL_DATA} ${WRKSRC}/scripts/shell_completions/fish/borg.fish \
		${PREFIX}/share/fish/completions/

	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/scripts/shell_completions/zsh/_borg \
		${PREFIX}/share/zsh/site-functions/

pre-test:
	${MODPY_CMD} build_ext --inplace

.include <bsd.port.mk>
