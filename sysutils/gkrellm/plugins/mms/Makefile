# $OpenBSD: Makefile,v 1.3 2004/05/18 14:49:56 naddy Exp $

COMMENT=	"XMMS plugin for Gkrellm2"

DISTNAME=	gkrellmms-2.1.19
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

LIB_DEPENDS+=	xmms.3::audio/xmms

WRKDIST=	${WRKDIR}/gkrellmms
ALL_TARGET=	gkrellmms.so
PLUGIN=		${WRKSRC}/gkrellmms.so

.include <bsd.port.mk>
