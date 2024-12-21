COMMENT =		fuzzer and test suite for TLS implementations.

MODPY_DISTV =		20240906
DISTNAME =		tlsfuzzer-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security
REVISION =		1

GH_ACCOUNT =		tlsfuzzer
GH_PROJECT =		tlsfuzzer
GH_COMMIT =		a423e3804b59154894f3a2d7cbcfaa2046be7c16

MAINTAINER =		Theo Buehler <tb@openbsd.org>

MODPY_PYTEST =		Yes

WANTLIB +=		${MODPY_WANTLIB}

RUN_DEPENDS +=		net/py-tlslite-ng

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PYBUILD =		setuptools

TEST_DEPENDS +=         devel/py-mock

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src

SCRIPTS_DIR = ${PREFIX}/share/tlsfuzzer/scripts
post-install:
	${INSTALL_DATA_DIR} ${SCRIPTS_DIR}
	cd ${WRKSRC}/scripts && pax -rw *.py ${SCRIPTS_DIR}
	${MODPY_COMPILEALL} ${SCRIPTS_DIR}

.include <bsd.port.mk>
