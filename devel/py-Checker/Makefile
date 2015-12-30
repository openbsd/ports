# $OpenBSD: Makefile,v 1.33 2015/12/30 22:58:52 jasper Exp $

COMMENT=	Python codes checker

MODPY_EGG_VERSION=0.8.19
DISTNAME=	pychecker-${MODPY_EGG_VERSION}
PKGNAME=	py-Checker-${MODPY_EGG_VERSION}
CATEGORIES=    	devel

HOMEPAGE=	http://pychecker.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pychecker/}

MODULES=	lang/python
MODPY_DISTUTILS_INSTALLARGS=	-O1

EXAMPLESDIR=	${PREFIX}/share/examples/${MODPY_PY_PREFIX}Checker/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/${MODPY_PY_PREFIX}Checker/
.for i in ChangeLog README
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/py-Checker/
.endfor
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/pycheckrc ${EXAMPLESDIR}

.include <bsd.port.mk>
