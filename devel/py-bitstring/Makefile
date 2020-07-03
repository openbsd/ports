# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:41 sthen Exp $

COMMENT =		construction, analysis and modification of binary data

MODPY_EGG_VERSION =	3.1.5
DISTNAME =		bitstring-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
