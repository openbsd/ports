# $OpenBSD: Makefile,v 1.28 2015/06/26 18:08:40 ajacoutot Exp $

COMMENT=	XMMS plugin for Gkrellm2

DISTNAME=	gkrellmms-2.1.21
REVISION=	17
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

EXTRA_WANTLIB=	gdk glib gmodule gthread-2.0 gtk xcb xmms

LIB_DEPENDS=	audio/xmms

WRKDIST=	${WRKDIR}/gkrellmms
ALL_TARGET=	gkrellmms.so
PLUGIN=		${WRKSRC}/gkrellmms.so

.include <bsd.port.mk>
