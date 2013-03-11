# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:48 espie Exp $

COMMENT =	tiny LRU cache implementation and decorator

MODPY_EGG_VERSION = 0.5
DISTNAME =	repoze.lru-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/repoze.lru/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-lru
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-repoze-lru

.include <bsd.port.mk>
