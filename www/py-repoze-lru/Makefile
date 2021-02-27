# $OpenBSD: Makefile,v 1.9 2021/02/27 18:40:40 daniel Exp $

COMMENT =	tiny LRU cache implementation and decorator

MODPY_EGG_VERSION = 0.6
DISTNAME =	repoze.lru-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	2

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}repoze-lru
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/${MODPY_PY_PREFIX}repoze-lru

.include <bsd.port.mk>
