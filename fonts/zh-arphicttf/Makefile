# $OpenBSD: Makefile,v 1.6 2015/01/21 06:13:48 bentley Exp $

COMMENT=	chinese big5/gb truetype fonts

DISTNAME=       zh-arphicttf-2.11
PKGNAME=	zh-fonts-arphicttf-2.11
REVISION=	3
CATEGORIES=     fonts chinese x11

PERMIT_PACKAGE_CDROM=   Yes

NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

WRKDIST=        ${WRKDIR}/arphic

FONTDIR=	${PREFIX}/lib/X11/fonts/TrueType

FONTS=		bkai00mp.ttf bsmi00lp.ttf gbsn00lp.ttf gkai00mp.ttf

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	cd ${WRKSRC}/font; ${INSTALL_DATA} ${FONTS} ${FONTDIR}
	
.include <bsd.port.mk>
