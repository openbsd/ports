# $OpenBSD: Makefile,v 1.2 2004/05/18 14:49:56 naddy Exp $

COMMENT=	"Volume dial for Gkrellm2"

DISTNAME=	gkrellm-volume-2.1.9
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://gkrellm.luon.net/volume.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

MAKE_FLAGS=	SYSLIB="-lossaudio"
WRKDIST=	${WRKDIR}/gkrellm-volume
PLUGIN=		${WRKSRC}/volume.so

.include <bsd.port.mk>
