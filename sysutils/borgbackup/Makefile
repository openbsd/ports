# $OpenBSD: Makefile,v 1.5 2016/05/19 20:30:16 jca Exp $

COMMENT =		deduplicating backup program

MODPY_EGG_VERSION =	1.0.2
REVISION =		0
DISTNAME =		borgbackup-${MODPY_EGG_VERSION}

MODPY_PI =		Yes

CATEGORIES =		sysutils

MAINTAINER =		Michael Reed <m.reed@mykolab.com>

# BSD-3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
WANTLIB +=		${MODPY_WANTLIB} crypto pthread lz4

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} archivers/lz4
BUILD_DEPENDS +=	devel/py-setuptools_scm${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}
RUN_DEPENDS +=		net/py-msgpack${MODPY_FLAVOR}

TEST_DEPENDS +=		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-benchmark${MODPY_FLAVOR}

MODPY_SETUPTOOLS =	Yes

post-build:
	${MODPY_CMD} build_ext --inplace
	cd ${WRKSRC}/docs; env PYTHONPATH=${WRKSRC} \
		make man SPHINXBUILD=sphinx-build${MODPY_BIN_SUFFIX}

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/_build/man/borg.1 ${PREFIX}/man/man1/borg.1

do-test: fake
	cd ${WRKSRC}; \
		PATH=${WRKINST}/usr/local/bin:${PATH} \
		PYTHONPATH=${WRKSRC} \
		${MODPY_BIN} -m pytest --ignore lib*

.include <bsd.port.mk>
