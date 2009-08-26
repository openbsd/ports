# $OpenBSD: Makefile,v 1.11 2009/08/26 00:09:12 sthen Exp $

COMMENT=	pure-Python implementation of the ElementTree API

DISTNAME=	elementtree-1.2.6-20050316
PKGNAME=	py-ElementTree-1.2.6p5
CATEGORIES=	textproc devel

HOMEPAGE=	http://effbot.org/zone/element-index.htm

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://effbot.org/media/downloads/
MODULES=	lang/python
MODPY_VERSION=	2.4

REGRESS_DEPENDS=${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-ElementTree
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/py-ElementTree/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-ElementTree
	${INSTALL_DATA} ${WRKSRC}/samples/* ${PREFIX}/share/examples/py-ElementTree/

do-regress: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
