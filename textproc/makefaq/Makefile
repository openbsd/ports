# $OpenBSD: Makefile,v 1.1.1.1 2004/02/16 21:09:00 xsa Exp $

COMMENT=	"Python program to create FAQ's list from formatted data file"

DISTNAME=	makefaq-2.4
CATEGORIES=	textproc

HOMEPAGE=	http://www.makefaq.com/

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=makefaq/}
EXTRACT_SUFX=	.tgz

MODULES=	python

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

DOCDIR=		${PREFIX}/share/doc/makefaq

do-configure:
	@perl -pi -e 's,%%MODPY_VERSION%%,${MODPY_VERSION},g' ${WRKSRC}/makefaq.py

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/makefaq.py ${PREFIX}/bin/makefaq
	${INSTALL_MAN} ${WRKSRC}/makefaq.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/faq* ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/makefaq-xml-1-0.dtd ${DOCDIR}

.include <bsd.port.mk>
