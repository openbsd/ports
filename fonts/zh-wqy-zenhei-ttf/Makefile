COMMENT=	Wen Quan Yi Zen Hei outline font

MODFONT_FAMILY =	wqy-zenhei
MODFONT_VERSION =	0.9.45
DISTNAME =	${MODFONT_FAMILY}-${MODFONT_VERSION}
PKGNAME =	zh-wqy-zenhei-ttf-${MODFONT_VERSION}

CATEGORIES=	x11 chinese

HOMEPAGE =	https://sourceforge.net/projects/wqy/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	font

SITES=		${SITE_SOURCEFORGE:=wqy/}
EXTRACT_SUFX=	.tar.gz

MODFONT_FONTFILES =	*.ttc

WRKDIST=	${WRKDIR}/wqy-zenhei
NO_BUILD=	Yes
NO_TEST=	Yes
MODFONT_FONTDIR=	${PREFIX}/share/fonts/wqy

.include <bsd.port.mk>
