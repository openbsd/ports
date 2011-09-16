# $OpenBSD: Makefile,v 1.8 2011/09/16 12:00:08 espie Exp $

COMMENT =	html/xml templating engine

MODPY_EGG_VERSION = 0.6.7
DISTNAME =	meld3-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	1

CATEGORIES =	www

HOMEPAGE =	http://plope.com/software/meld3/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=m/meld3/}

MODULES =	lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-meld3
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/doc/py-meld3

do-regress:
	cd ${WRKSRC}/meld3 && ${MODPY_BIN} test_meld3.py

.include <bsd.port.mk>
