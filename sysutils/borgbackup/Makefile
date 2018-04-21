# $OpenBSD: Makefile,v 1.21 2018/04/21 11:54:55 bket Exp $

COMMENT =		deduplicating backup program

MODPY_EGG_VERSION =	1.1.5
REVISION =		0
DISTNAME =		borgbackup-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

MAINTAINER =		Bjorn Ketelaars <bjorn.ketelaars@hydroxide.nl>

# BSD-3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

WANTLIB +=		${MODPY_WANTLIB} b2 crypto lz4 pthread zstd

LIB_DEPENDS +=		${MODPY_LIB_DEPENDS} \
			archivers/lz4 \
			archivers/zstd \
			security/libb2
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS +=		net/py-msgpack${MODPY_FLAVOR}
TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR}

post-build:
	${MODPY_CMD} build_ext --inplace

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/man/*.1 ${PREFIX}/man/man1/

do-test: fake
	cd ${WRKSRC}; \
		PATH=${WRKINST}/usr/local/bin:${PATH} \
		PYTHONPATH=${WRKSRC}/src \
		${MODPY_BIN} -m pytest --ignore lib*

.include <bsd.port.mk>
