# $OpenBSD: Makefile,v 1.3 2021/10/29 15:38:42 sthen Exp $

COMMENT =		construction, analysis and modification of binary data

MODPY_EGG_VERSION =	3.1.5
DISTNAME =		bitstring-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

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
FLAVOR =	python3

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}bitstring/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}bitstring/

.include <bsd.port.mk>
