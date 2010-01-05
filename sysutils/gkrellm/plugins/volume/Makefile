# $OpenBSD: Makefile,v 1.17 2010/01/05 18:41:33 ajacoutot Exp $

COMMENT=	Volume dial for Gkrellm2

V=		2.1.13
DISTNAME=	gkrellm-volume-${V}
PKGNAME=	gkrellmvolume-${V}p4
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/volume.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

MAKE_FLAGS=	SYSLIB="-lossaudio"
WRKDIST=	${WRKDIR}/gkrellm-volume
PLUGIN=		${WRKSRC}/volume.so

EXTRA_WANTLIB=	ossaudio

.include <bsd.port.mk>
