# $OpenBSD: Makefile,v 1.29 2019/05/15 12:04:41 kmos Exp $

COMMENT =		deduplicating backup program

MODPY_EGG_VERSION =	1.1.9
DISTNAME =		borgbackup-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# BSD-3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	--ignore lib*
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

WANTLIB +=		${MODPY_WANTLIB} b2 crypto lz4 pthread zstd

LIB_DEPENDS +=		${MODPY_LIB_DEPENDS} \
			archivers/lz4 \
			archivers/zstd \
			security/libb2
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS +=		net/py-msgpack${MODPY_FLAVOR}
TEST_DEPENDS +=		devel/py-test-benchmark${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR}

TEST_ENV +=		PATH=${WRKINST}/usr/local/bin:${PATH} \
			PYTHONPATH=${WRKSRC}/src
PORTHOME =		${WRKDIR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 ${PREFIX}/man/man1/

pre-test:
	${MODPY_CMD} build_ext --inplace

do-test: fake
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
