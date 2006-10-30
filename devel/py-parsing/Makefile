# $OpenBSD: Makefile,v 1.8 2006/10/30 10:45:57 xsa Exp $

COMMENT=	"Python parsing module"

DISTNAME=	pyparsing-1.4.4
PKGNAME=	${DISTNAME:S/py/py-/}
CATEGORIES=	devel

HOMEPAGE=	http://pyparsing.sourceforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyparsing/}

MODULES=	lang/python

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-parsing
EXAMPLESDIR=	${PREFIX}/share/examples/py-parsing

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/CHANGES ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/HowToUsePyparsing.html ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/htmldoc/* ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

.include <bsd.port.mk>
