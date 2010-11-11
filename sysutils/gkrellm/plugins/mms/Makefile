# $OpenBSD: Makefile,v 1.24 2010/11/11 19:00:48 espie Exp $

COMMENT=	XMMS plugin for Gkrellm2

DISTNAME=	gkrellmms-2.1.21
REVISION=	14
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

LIB_DEPENDS+=	::audio/xmms

WRKDIST=	${WRKDIR}/gkrellmms
ALL_TARGET=	gkrellmms.so
PLUGIN=		${WRKSRC}/gkrellmms.so

EXTRA_WANTLIB=	Xi gdk gmodule gtk glib xmms.>=3
.include <bsd.port.mk>
