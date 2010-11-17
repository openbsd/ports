# $OpenBSD: Makefile,v 1.6 2010/11/17 08:05:15 espie Exp $

COMMENT=	tool for extracting metadata from PNG files

V=		1.11
DISTNAME=	pngmeta-${V}	
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pmt/}
HOMEPAGE=	http://pmt.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z png>=4

LIB_DEPENDS=		graphics/png

MAKE_FILE=		${FILESDIR}/Makefile
USE_GROFF =		Yes
NO_REGRESS=		Yes

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/pngmeta ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/pngmeta.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
