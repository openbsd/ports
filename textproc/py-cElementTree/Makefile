# $OpenBSD: Makefile,v 1.13 2009/08/26 00:09:13 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	C implementation of the ElementTree API

DISTNAME=	cElementTree-1.0.5-20051216
PKGNAME=	py-cElementTree-1.0.5p4
CATEGORIES=	textproc devel

HOMEPAGE=	http://effbot.org/zone/celementtree.htm

# MIT
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://effbot.org/media/downloads/

MODULES=	lang/python
MODPY_VERSION=	2.4

RUN_DEPENDS=	::textproc/py-ElementTree
REGRESS_DEPENDS=${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-cElementTree
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-cElementTree/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-cElementTree
	${INSTALL_DATA} ${WRKSRC}/samples/* ${PREFIX}/share/examples/py-cElementTree/

do-regress: fake
	@cd ${WRKSRC} && ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
		${MODPY_BIN} ./selftest.py

.include <bsd.port.mk>
