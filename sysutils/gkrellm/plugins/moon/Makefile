# $OpenBSD: Makefile,v 1.22 2017/09/15 15:37:18 naddy Exp $

COMMENT=	phase of the Moon for GkrellM2

DISTNAME=	gkrellmoon-0.6
REVISION=	19
CATEGORIES=	astro

HOMEPAGE=	http://gkrellmoon.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellmoon/}

EXTRA_WANTLIB=	gthread-2.0

ALL_TARGET=	gkrellmoon.so
PLUGIN=		${WRKSRC}/gkrellmoon.so

.include <bsd.port.mk>
