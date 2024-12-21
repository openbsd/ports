COMMENT =		library to implement a Unix daemon process

MODPY_DISTV =	3.0.1
DISTNAME =		python-daemon-${MODPY_DISTV}
PKGNAME =		py-daemon-${MODPY_DISTV}
CATEGORIES =		sysutils
REVISION =		1

MAINTAINER =		Martin Reindl <martin@catai.org>

HOMEPAGE =		https://pagure.io/python-daemon/

# GPL-3 and ASF-2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS = 	textproc/py-docutils

RUN_DEPENDS =		sysutils/py-lockfile

# XXX also needs py-testscenarios
TEST_DEPENDS=	devel/py-test \
#		devel/py-testscenarios \
		devel/py-testtools

DOCSDIR =	${PREFIX}/share/doc/${MODPY_PY_PREFIX}daemon

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/FAQ ${DOCSDIR}

.include <bsd.port.mk>
