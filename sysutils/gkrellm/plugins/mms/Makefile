# $OpenBSD: Makefile,v 1.10 2006/06/13 13:32:48 bernd Exp $

COMMENT=	"XMMS plugin for Gkrellm2"

DISTNAME=	gkrellmms-2.1.21
PKGNAME=	${DISTNAME}p3
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

LIB_DEPENDS+=	xmms.3::audio/xmms

WRKDIST=	${WRKDIR}/gkrellmms
ALL_TARGET=	gkrellmms.so
PLUGIN=		${WRKSRC}/gkrellmms.so

EXTRA_WANTLIB=	Xext Xi gdk gmodule gtk glib

.include <bsd.port.mk>
