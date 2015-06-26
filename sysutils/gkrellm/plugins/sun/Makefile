# $OpenBSD: Makefile,v 1.24 2015/06/26 18:27:33 ajacoutot Exp $

COMMENT=	GkrellM2 plugin to display sun rise/set times

DISTNAME=	gkrellsun-1.0.0
CATEGORIES=	astro

HOMEPAGE=	http://gkrellsun.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellsun/}

EXTRA_WANTLIB=	gthread-2.0

WRKDIST=	${WRKDIR}/${DISTNAME}/src20
PLUGIN=		${WRKSRC}/gkrellsun.so

.include <bsd.port.mk>
