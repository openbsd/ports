# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:46 espie Exp $

COMMENT=	Python module to easily generate XML/XHTML/HTML documents

DISTNAME=	jaxml-3.01
PKGNAME=	py-${DISTNAME}
REVISION=	7
CATEGORIES=	textproc

HOMEPAGE=	http://www.librelogiciel.com/software/jaxml/action_Presentation

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://www.librelogiciel.com/software/jaxml/tarballs/

MODULES=	lang/python

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-jaxml

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test/{template.htt,test.py} ${EXAMPLESDIR}

.include <bsd.port.mk>
