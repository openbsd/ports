# $OpenBSD: Makefile,v 1.1.1.1 2019/06/02 22:53:44 kn Exp $

COMMENT =		construction, analysis and modification of binary data

MODPY_EGG_VERSION =	3.1.5
DISTNAME =		bitstring-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/scott-griffiths/bitstring

# MIT
PERMIT_PACKAGE =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_TEST_DIR =	${WRKSRC}/test/

FLAVORS =		python3
FLAVOR ?=

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}bitstring/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}bitstring/

.include <bsd.port.mk>
