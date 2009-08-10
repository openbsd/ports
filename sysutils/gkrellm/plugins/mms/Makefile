# $OpenBSD: Makefile,v 1.19 2009/08/10 06:34:29 kili Exp $

COMMENT=	XMMS plugin for Gkrellm2

DISTNAME=	gkrellmms-2.1.21
PKGNAME=	${DISTNAME}p10
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

LIB_DEPENDS+=	xmms.>=3::audio/xmms

WRKDIST=	${WRKDIR}/gkrellmms
ALL_TARGET=	gkrellmms.so
PLUGIN=		${WRKSRC}/gkrellmms.so

EXTRA_WANTLIB=	Xi gdk gmodule gtk glib

.include <bsd.port.mk>
