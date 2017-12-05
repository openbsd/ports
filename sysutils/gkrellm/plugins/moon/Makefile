# $OpenBSD: Makefile,v 1.23 2017/12/05 16:25:45 espie Exp $

COMMENT=	phase of the Moon for GkrellM2

DISTNAME=	gkrellmoon-0.6
REVISION=	19
CATEGORIES=	astro
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://gkrellmoon.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellmoon/}

EXTRA_WANTLIB=	gthread-2.0

ALL_TARGET=	gkrellmoon.so
PLUGIN=		${WRKSRC}/gkrellmoon.so

.include <bsd.port.mk>
