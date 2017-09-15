# $OpenBSD: Makefile,v 1.24 2017/09/15 15:37:18 naddy Exp $

COMMENT=	volume dial for Gkrellm2

V=		2.1.13
DISTNAME=	gkrellm-volume-${V}
PKGNAME=	gkrellmvolume-${V}
REVISION=	11
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/volume.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

EXTRA_WANTLIB=	gthread-2.0 ossaudio

MAKE_FLAGS=	SYSLIB="-lossaudio"
WRKDIST=	${WRKDIR}/gkrellm-volume
PLUGIN=		${WRKSRC}/volume.so

.include <bsd.port.mk>
