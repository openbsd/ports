# $OpenBSD: Makefile,v 1.21 2015/06/26 18:08:40 ajacoutot Exp $

COMMENT=	phase of the Moon for GkrellM2

DISTNAME=	gkrellmoon-0.6
REVISION=	18
CATEGORIES=	astro

HOMEPAGE=	http://gkrellmoon.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellmoon/}

EXTRA_WANTLIB=	gthread-2.0

ALL_TARGET=	gkrellmoon.so
PLUGIN=		${WRKSRC}/gkrellmoon.so

.include <bsd.port.mk>
