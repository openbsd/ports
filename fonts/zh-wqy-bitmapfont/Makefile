# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:13 sthen Exp $

COMMENT=	Wen Quan Yi bitmap song CJK fonts

TYPEFACE=	wqy-bitmapfont
V=		0.9.9-0
DISTNAME=	${TYPEFACE}-pcf-$V
REVISION=	2
PKGNAME=	zh-wqy-bitmapfont-${V:S/-/./}

CATEGORIES=	x11 chinese

HOMEPAGE=	http://wqy.sourceforge.net/en/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wqy/}
EXTRACT_SUFX=	.tar.gz

MODULES=	font

WRKDIST=	${WRKDIR}/wqy-bitmapfont
NO_BUILD=	Yes
NO_TEST=	Yes
WQYFONTDIR=	${PREFIX}/share/fonts/wqy
USE_X11 =	Yes

do-install:
	${X11BASE}/bin/mkfontdir ${WRKSRC}
	egrep '\.pcf' ${WRKSRC}/fonts.dir | \
		sed 's/\.pcf//g' > ${WRKSRC}/fonts.alias
	${INSTALL_DATA_DIR} ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pcf ${WQYFONTDIR}
	${INSTALL_DATA} ${WRKSRC}/fonts.alias ${WQYFONTDIR}/fonts.alias-wqy

.include <bsd.port.mk>
