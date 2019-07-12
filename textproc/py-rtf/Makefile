# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:13 sthen Exp $

COMMENT=	Rich Text Format document generation in Python

DISTNAME=	PyRTF-0.45
PKGNAME=	${DISTNAME:L:S/^py/py-/}
REVISION=	6
CATEGORIES=	textproc

HOMEPAGE=	http://pyrtf.sourceforge.net/

# GPL + LGPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pyrtf/}

MODULES=	lang/python

NO_TEST=	Yes

DOCSDIR=	${PREFIX}/share/doc/py-rtf
EXAMPLESDIR=	${PREFIX}/share/examples/py-rtf

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCSDIR}
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/examples/* ${EXAMPLESDIR}

.include <bsd.port.mk>
