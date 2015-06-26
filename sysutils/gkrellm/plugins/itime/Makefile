# $OpenBSD: Makefile,v 1.21 2015/06/26 18:08:40 ajacoutot Exp $

COMMENT=	GkrellM2 plugin that shows Internet time

V=		1.0.1
DISTNAME=	gkrellmitime-${V}
REVISION=	17
CATEGORIES=	net

EXTRA_WANTLIB=	gthread-2.0

ALL_TARGET=	gkrellm_itime.so
PLUGIN=		${WRKSRC}/gkrellm_itime.so

.include <bsd.port.mk>
