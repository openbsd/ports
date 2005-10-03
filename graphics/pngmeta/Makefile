# $OpenBSD: Makefile,v 1.1.1.1 2005/10/03 14:36:58 robert Exp $

COMMENT=	"tool for extracting metadata from PNG files"

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
WANTLIB=		c m z

LIB_DEPENDS=		png.4::graphics/png

MAKE_FILE=		${FILESDIR}/Makefile
NO_REGRESS=		Yes

do-install:
		${INSTALL_SCRIPT} ${WRKSRC}/pngmeta ${PREFIX}/bin
		${INSTALL_MAN} ${WRKSRC}/pngmeta.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
