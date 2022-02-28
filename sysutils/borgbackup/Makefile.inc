# $OpenBSD: Makefile.inc,v 1.2 2022/02/28 11:01:14 bket Exp $

COMMENT =		deduplicating backup program

DISTNAME =		borgbackup-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://www.borgbackup.org/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB +=		crypto lz4 xxhash zstd

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_TEST_DIR =	${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}

LIB_DEPENDS +=		archivers/lz4 \
			archivers/zstd \
			sysutils/xxhash
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS +=		sysutils/py-packaging${MODPY_FLAVOR}
TEST_DEPENDS +=		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-test-benchmark${MODPY_FLAVOR}

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
