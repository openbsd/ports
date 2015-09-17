# $OpenBSD: Makefile,v 1.4 2015/09/17 08:24:36 benoit Exp $

COMMENT =	tiny LRU cache implementation and decorator

MODPY_EGG_VERSION = 0.6
DISTNAME =	repoze.lru-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-lru
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-repoze-lru

.include <bsd.port.mk>
