# $OpenBSD: Makefile,v 1.21 2017/09/15 15:37:17 naddy Exp $

COMMENT=	launch commonly used apps from GkrellM2

DISTNAME=	gkrellmlaunch-0.5
REVISION=	18
CATEGORIES=	x11

HOMEPAGE=	http://gkrellmlaunch.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellmlaunch/}

EXTRA_WANTLIB=	gthread-2.0

ALL_TARGET=	gkrellmlaunch.so
PLUGIN=		${WRKSRC}/gkrellmlaunch.so

.include <bsd.port.mk>
