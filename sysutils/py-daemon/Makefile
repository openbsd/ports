COMMENT =		library to implement a Unix daemon process

MODPY_DISTV =		3.1.2
DISTNAME =		python_daemon-${MODPY_DISTV}
PKGNAME =		py-daemon-${MODPY_DISTV}
CATEGORIES =		sysutils

MAINTAINER =		Martin Reindl <martin@catai.org>

HOMEPAGE =		https://pagure.io/python-daemon/

# GPL-3 and ASF-2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		textproc/py-changelog-chug \
			textproc/py-docutils

RUN_DEPENDS =		sysutils/py-lockfile

# needs py-testscenarios, not in ports
TEST_DEPENDS =		devel/py-test \
			devel/py-testtools

DOCSDIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}daemon

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${DOCSDIR}

.include <bsd.port.mk>
