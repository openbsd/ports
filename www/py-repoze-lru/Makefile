# $OpenBSD: Makefile,v 1.11 2021/10/24 09:28:53 sthen Exp $

COMMENT =	tiny LRU cache implementation and decorator

MODPY_EGG_VERSION = 0.6
DISTNAME =	repoze.lru-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	4

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR =	python3

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}repoze-lru
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}repoze-lru

.include <bsd.port.mk>
