# $OpenBSD: Makefile,v 1.20 2010/01/05 18:41:33 ajacoutot Exp $

COMMENT=	XMMS plugin for Gkrellm2

DISTNAME=	gkrellmms-2.1.21
PKGNAME=	${DISTNAME}p11
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

LIB_DEPENDS+=	xmms.>=3::audio/xmms

WRKDIST=	${WRKDIR}/gkrellmms
ALL_TARGET=	gkrellmms.so
PLUGIN=		${WRKSRC}/gkrellmms.so

EXTRA_WANTLIB=	Xi gdk gmodule gtk glib

.include <bsd.port.mk>
