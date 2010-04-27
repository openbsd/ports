# $OpenBSD: Makefile,v 1.21 2010/04/27 21:53:56 sthen Exp $

COMMENT=	XMMS plugin for Gkrellm2

DISTNAME=	gkrellmms-2.1.21
PKGNAME=	${DISTNAME}p12
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

LIB_DEPENDS+=	xmms.>=3::audio/xmms

WRKDIST=	${WRKDIR}/gkrellmms
ALL_TARGET=	gkrellmms.so
PLUGIN=		${WRKSRC}/gkrellmms.so

EXTRA_WANTLIB=	Xi gdk gmodule gtk glib

.include <bsd.port.mk>
