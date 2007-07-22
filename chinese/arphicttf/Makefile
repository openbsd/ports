# $OpenBSD: Makefile,v 1.14 2007/07/22 08:02:11 ajacoutot Exp $

COMMENT=	chinese big5/gb truetype fonts

DISTNAME=       zh-arphicttf-2.11
PKGNAME=	zh-fonts-arphicttf-2.11p1
CATEGORIES=     chinese x11

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

MASTER_SITES=	ftp://freebsd.sinica.edu.tw/pub/keith/

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

WRKDIST=        ${WRKDIR}/arphic 

FONTDIR=	${PREFIX}/lib/X11/fonts/TrueType

FONTS=		bkai00mp.ttf bsmi00lp.ttf gbsn00lp.ttf gkai00mp.ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	cd ${WRKSRC}/font; ${INSTALL_DATA} ${FONTS} ${FONTDIR}
	
.include <bsd.port.mk>
