# $OpenBSD: Makefile,v 1.10 2013/11/01 14:49:15 benoit Exp $

COMMENT =	html/xml templating engine

MODPY_EGG_VERSION = 0.6.10
DISTNAME =	meld3-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://plope.com/software/meld3/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=m/meld3/}

MODULES =	lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-meld3
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-meld3

do-test:
	cd ${WRKSRC}/meld3 && ${MODPY_BIN} test_meld3.py

.include <bsd.port.mk>
