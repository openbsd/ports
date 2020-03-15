# $OpenBSD: Makefile,v 1.3 2020/03/15 05:45:03 tb Exp $

COMMENT =		fuzzer and test suite for TLS implementations.

MODPY_EGG_VERSION =	20200313
DISTNAME =		tlsfuzzer-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		security

GH_ACCOUNT =		tomato42
GH_PROJECT =		tlsfuzzer
GH_COMMIT =		7f890e3b595a5e283cbbab66d04423048919b619

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
	cd ${WRKSRC}/scripts && pax -rw . ${SCRIPTS_DIR}
	${MODPY_BIN} -m compileall ${SCRIPTS_DIR}

.include <bsd.port.mk>
