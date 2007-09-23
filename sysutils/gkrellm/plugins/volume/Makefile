# $OpenBSD: Makefile,v 1.11 2007/09/23 12:57:08 sturm Exp $

COMMENT=	Volume dial for Gkrellm2

DISTNAME=	gkrellm-volume-2.1.13
PKGNAME=	${DISTNAME}p5
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://gkrellm.luon.net/volume.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

MAKE_FLAGS=	SYSLIB="-lossaudio"
WRKDIST=	${WRKDIR}/gkrellm-volume
PLUGIN=		${WRKSRC}/volume.so

EXTRA_WANTLIB=	ossaudio

.include <bsd.port.mk>
