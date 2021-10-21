# $OpenBSD: Makefile,v 1.11 2021/10/21 20:41:21 sthen Exp $

COMMENT =		extensible memoizing collections and decorators

MODPY_EGG_VERSION =	4.2.4
DISTNAME =		cachetools-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/tkem/cachetools

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVOR =		python3
FLAVORS =		python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}cachetools/
	${INSTALL_DATA} ${WRKSRC}/README.rst \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}cachetools/

.include <bsd.port.mk>
