# $OpenBSD: Makefile,v 1.5 2016/09/08 17:29:00 jasper Exp $

COMMENT=	Wen Quan Yi Zen Hei outline font

TYPEFACE=	wqy-zenhei
V=		0.6.26-0
DISTNAME=	${TYPEFACE}-${V}
PKGNAME=	zh-wqy-zenhei-ttf-${V:S/-/./}
REVISION=	2

CATEGORIES=	x11 chinese

HOMEPAGE=	http://wqy.sourceforge.net/en/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	font

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=wqy/}
EXTRACT_SUFX=	.tar.gz

WRKDIST=	${WRKDIR}/wqy-zenhei
NO_BUILD=	Yes
NO_TEST=	Yes
FONTDIR=	${PREFIX}/share/fonts/wqy

.include <bsd.port.mk>
