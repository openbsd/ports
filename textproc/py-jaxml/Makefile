# $OpenBSD: Makefile,v 1.6 2009/03/25 13:52:31 jasper Exp $

COMMENT=	Python module to easily generate XML/XHTML/HTML documents

DISTNAME=	jaxml-3.01
PKGNAME=	py-${DISTNAME}p2
CATEGORIES=	textproc

HOMEPAGE=	http://www.librelogiciel.com/software/jaxml/action_Presentation

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.librelogiciel.com/software/jaxml/tarballs/

MODULES=	lang/python

NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/py-jaxml

post-install:
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/test/{template.htt,test.py} ${EXAMPLESDIR}

.include <bsd.port.mk>
