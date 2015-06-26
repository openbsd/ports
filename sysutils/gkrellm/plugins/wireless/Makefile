# $OpenBSD: Makefile,v 1.22 2015/06/26 18:08:40 ajacoutot Exp $

COMMENT=	GkrellM2 plugin to monitor wi(4) signal strength

DISTNAME=	gkrellmwireless-2.0.3
REVISION=	9
CATEGORIES=	net

HOMEPAGE=	http://gkrellm.luon.net/gkrellmwireless.php

MASTER_SITES=	http://gkrellm.luon.net/files/

EXTRA_WANTLIB=	gthread-2.0

WRKDIST=	${WRKDIR}/gkrellmwireless
PLUGIN=		${WRKSRC}/wireless.so

.include <bsd.port.mk>
