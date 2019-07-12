# $OpenBSD: Makefile,v 1.8 2019/07/12 20:43:44 sthen Exp $

COMMENT=	the definitive guide to CVS

V=		1.21
DISTNAME=	cvsbook-${V}-all
PKGNAME=	cvs-guide-${V}
REVISION=	0
CATEGORIES=	books
MASTER_SITES=	http://cvsbook.red-bean.com/

HOMEPAGE=	http://cvsbook.red-bean.com/

# GPL
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}/cvsbook-${V}

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

INSTALL_LOC=	${PREFIX}/share/doc/cvs-guide
HTML_DOCS=	amazon-boycott.html cvsbook.html anoncvs.html \
		index.html errata.html
PRINT_DOCS=	cvsbook.ps cvsbook.pdf OSDevWithCVS_3E.pdf

do-install:
	${INSTALL_DATA_DIR} ${INSTALL_LOC}
	${INSTALL_DATA_DIR} ${INSTALL_LOC}/html
	${INSTALL_DATA_DIR} ${INSTALL_LOC}/print
.for i in ${HTML_DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${INSTALL_LOC}/html
.endfor
.for i in ${PRINT_DOCS}
	${INSTALL_DATA} ${WRKSRC}/${i} ${INSTALL_LOC}/print
.endfor
	
.include <bsd.port.mk>
