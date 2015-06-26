# $OpenBSD: Makefile,v 1.23 2015/06/26 18:08:40 ajacoutot Exp $

COMMENT=	GkrellM2 plugin to display sun rise/set times

DISTNAME=	gkrellsun-0.12.1
REVISION=	18
CATEGORIES=	astro

HOMEPAGE=	http://gkrellsun.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellsun/}

EXTRA_WANTLIB=	gthread-2.0

WRKDIST=	${WRKDIR}/${DISTNAME}/src20
PLUGIN=		${WRKSRC}/gkrellsun.so

.include <bsd.port.mk>
