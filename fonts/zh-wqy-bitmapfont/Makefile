COMMENT=	Wen Quan Yi bitmap song CJK fonts

MODFONT_FAMILY=		wqy-bitmapfont
MODFONT_VERSION=	0.9.9-0
DISTNAME=	${MODFONT_FAMILY}-pcf-${MODFONT_VERSION}
REVISION=	3
PKGNAME=	zh-wqy-bitmapfont-${MODFONT_VERSION:S/-/./}

CATEGORIES=	x11 chinese

HOMEPAGE=	https://wqy.sourceforge.net/en/

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=wqy/}
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
