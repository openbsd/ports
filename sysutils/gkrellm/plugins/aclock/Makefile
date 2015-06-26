# $OpenBSD: Makefile,v 1.23 2015/06/26 18:08:39 ajacoutot Exp $

COMMENT=	analog clock for GkrellM2

V=		0.3.3
DISTNAME=	gkrellaclock-${V}
REVISION=	17
CATEGORIES=	misc

HOMEPAGE=	http://www.geocities.com/m_muthukumar/gkrellaclock.html

EXTRA_WANTLIB=	gthread-2.0

MASTER_SITES=	http://www.geocities.com/m_muthukumar/

WRKDIST=       	${WRKDIR}/gkrellAclock-${V}
ALL_TARGET=	gkrellaclock.so

PLUGIN=		${WRKSRC}/gkrellaclock.so

.include <bsd.port.mk>
