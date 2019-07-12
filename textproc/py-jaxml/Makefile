# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:12 sthen Exp $

COMMENT=	Python module to easily generate XML/XHTML/HTML documents

DISTNAME=	jaxml-3.01
PKGNAME=	py-${DISTNAME}
REVISION=	7
CATEGORIES=	textproc

HOMEPAGE=	http://www.librelogiciel.com/software/jaxml/action_Presentation

# GPL
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.librelogiciel.com/software/jaxml/tarballs/

MODULES=	lang/python

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-jaxml

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test/{template.htt,test.py} ${EXAMPLESDIR}

.include <bsd.port.mk>
