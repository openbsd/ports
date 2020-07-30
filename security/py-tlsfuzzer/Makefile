# $OpenBSD: Makefile,v 1.14 2020/07/30 11:23:55 tb Exp $

COMMENT =		fuzzer and test suite for TLS implementations.

MODPY_EGG_VERSION =	20200725
DISTNAME =		tlsfuzzer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security

GH_ACCOUNT =		tomato42
GH_PROJECT =		tlsfuzzer
GH_COMMIT =		959b174b4e3b081c75fdf6e94072ba62ef741d6f

MAINTAINER =		Theo Buehler <tb@openbsd.org>

MODPY_PYTEST =		Yes

FLAVOR =		python3
FLAVORS =		python3

WANTLIB +=		${MODPY_WANTLIB}

RUN_DEPENDS +=		net/py-tlslite-ng${MODPY_FLAVOR}

# GPLv2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

TEST_DEPENDS +=         devel/py-mock${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src

pre-install:
	cd ${WRKSRC}/lib/tlsfuzzer && ln -fs ../../tlsfuzzer/utils

SCRIPTS_DIR = ${PREFIX}/share/tlsfuzzer/scripts
post-install:
	${INSTALL_DATA_DIR} ${SCRIPTS_DIR}
	cd ${WRKSRC}/scripts && pax -rw *.py ${SCRIPTS_DIR}
	${MODPY_BIN} -m compileall ${SCRIPTS_DIR}

.include <bsd.port.mk>
