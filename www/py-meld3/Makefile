# $OpenBSD: Makefile,v 1.1.1.1 2009/03/22 17:01:13 fgsch Exp $

COMMENT =	html/xml templating engine

MODPY_EGG_VERSION = 0.6.5

DISTNAME =	meld3-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www

HOMEPAGE =	http://plope.com/software/meld3/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}

MODULES =	lang/python

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/docs/py-meld3
	${INSTALL_DATA} ${WRKSRC}/README.txt \
	    ${PREFIX}/share/docs/py-meld3

do-regress:
	cd ${WRKSRC}/meld3 && ${MODPY_BIN} test_meld3.py

.include <bsd.port.mk>
