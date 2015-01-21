# $OpenBSD: Makefile,v 1.4 2015/01/21 06:13:48 bentley Exp $

COMMENT=	Wen Quan Yi bitmap song CJK fonts

V=		0.9.9-0
DISTNAME=	wqy-bitmapfont-pcf-$V
REVISION=	1
PKGNAME=	zh-wqy-bitmapfont-${V:S/-/./}

CATEGORIES=	fonts x11 chinese

HOMEPAGE=	http://wqy.sourceforge.net/en/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wqy/}

WRKDIST=	${WRKDIR}/wqy-bitmapfont
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*
WQYFONTDIR=	${PREFIX}/lib/X11/fonts/wqy
USE_X11 =	Yes

do-install:
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${WQYFONTDIR}/fonts.alias-wqy

.include <bsd.port.mk>
