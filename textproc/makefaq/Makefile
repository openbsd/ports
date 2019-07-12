# $OpenBSD: Makefile,v 1.17 2019/07/12 20:50:01 sthen Exp $

COMMENT=	Python program to create FAQ's list from formatted data file

DISTNAME=	makefaq-2.5
REVISION=	6
CATEGORIES=	textproc

HOMEPAGE=	http://www.makefaq.org/

# GPL 
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makefaq/}
EXTRACT_SUFX=	.tgz

MODULES=	lang/python

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

DOCDIR=		${PREFIX}/share/doc/makefaq

do-configure:
	${SUBST_CMD} ${WRKSRC}/makefaq.{1,py}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/makefaq.py ${PREFIX}/bin/makefaq
	${INSTALL_MAN} ${WRKSRC}/makefaq.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/faq* ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/makefaq-xml-1-0.dtd ${DOCDIR}

.include <bsd.port.mk>
