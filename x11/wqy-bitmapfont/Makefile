# $OpenBSD: Makefile,v 1.2 2008/10/24 13:33:45 jasper Exp $

COMMENT=	Wen Quan Yi bitmap song CJK fonts

V=		0.9.9-0
DISTNAME=	wqy-bitmapfont-pcf-$V
PKGNAME=	wqy-bitmapfont-$Vp0

CATEGORIES=	x11 chinese

HOMEPAGE=	http://wqy.sourceforge.net/en/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wqy/}

WRKDIST=	${WRKDIR}/wqy-bitmapfont
USE_X11=	Yes
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
WQYFONTDIR=	${PREFIX}/lib/X11/fonts/wqy

do-install:
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${WQYFONTDIR}/fonts.alias-wqy

.include <bsd.port.mk>
