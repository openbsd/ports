# $OpenBSD: Makefile,v 1.1.1.1 2003/11/03 20:34:18 sturm Exp $

COMMENT=	"Volume dial for Gkrellm2"

DISTNAME=	gkrellm-volume-2.1.8
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://gkrellm.luon.net/volume.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

MAKE_FLAGS=	SYSLIB="-lossaudio"
WRKDIST=	${WRKDIR}/gkrellm-volume
PLUGIN=		${WRKSRC}/volume.so

.include <bsd.port.mk>
