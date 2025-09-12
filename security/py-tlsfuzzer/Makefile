COMMENT =		fuzzer and test suite for TLS implementations.

MODPY_DISTV =		20250909
DISTNAME =		tlsfuzzer-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security

GH_ACCOUNT =		tlsfuzzer
GH_PROJECT =		tlsfuzzer
GH_COMMIT =		c5dccbd86636368f764e3ace6427ba734fb083b9

MAINTAINER =		Theo Buehler <tb@openbsd.org>

MODPY_PYTEST =		Yes

WANTLIB +=		${MODPY_WANTLIB}

RUN_DEPENDS +=		net/py-tlslite-ng \
			security/py-kyber

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

TEST_DEPENDS +=         devel/py-mock

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src

SCRIPTS_DIR = ${PREFIX}/share/tlsfuzzer/scripts
post-install:
	${INSTALL_DATA_DIR} ${SCRIPTS_DIR}
	cd ${WRKSRC}/tlsfuzzer/_apps && pax -rw *.py ${SCRIPTS_DIR}
	${MODPY_COMPILEALL} ${SCRIPTS_DIR}

.include <bsd.port.mk>
