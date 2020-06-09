# $OpenBSD: Makefile,v 1.9 2020/06/09 05:32:21 bentley Exp $

COMMENT=	Wen Quan Yi Zen Hei outline font

TYPEFACE=	wqy-zenhei
V =		0.9.45
DISTNAME=	${TYPEFACE}-${V}
PKGNAME =	zh-wqy-zenhei-ttf-$V

CATEGORIES=	x11 chinese

HOMEPAGE =	https://sourceforge.net/projects/wqy/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES =	font

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wqy/}
EXTRACT_SUFX=	.tar.gz

FONTTYPES =	ttc

WRKDIST=	${WRKDIR}/wqy-zenhei
NO_BUILD=	Yes
NO_TEST=	Yes
FONTDIR=	${PREFIX}/share/fonts/wqy

.include <bsd.port.mk>
