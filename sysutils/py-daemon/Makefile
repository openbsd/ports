# $OpenBSD: Makefile,v 1.14 2020/07/03 21:13:10 sthen Exp $

COMMENT =		library to implement a Unix daemon process

MODPY_EGG_VERSION =	2.2.4
DISTNAME =		python-daemon-${MODPY_EGG_VERSION}
PKGNAME =		py-daemon-${MODPY_EGG_VERSION}
CATEGORIES =		sysutils
REVISION =		1

MAINTAINER =		Martin Reindl <martin@catai.org>

HOMEPAGE =		https://pagure.io/python-daemon/

# GPL-3 and ASF-2
PERMIT_PACKAGE =	Yes

FLAVORS =               python3
FLAVOR =		python3

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

BUILD_DEPENDS = 	textproc/py-docutils${MODPY_FLAVOR}

RUN_DEPENDS =		sysutils/py-lockfile${MODPY_FLAVOR}

# XXX also needs py-testscenarios
TEST_DEPENDS =	devel/py-mock${MODPY_FLAVOR} \
		devel/py-test${MODPY_FLAVOR} \
#		devel/py-testscenarios${MODPY_FLAVOR} \
		devel/py-testtools${MODPY_FLAVOR}

DOCSDIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}daemon

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${DOCSDIR}

.include <bsd.port.mk>
