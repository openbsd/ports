# $OpenBSD: Makefile,v 1.7 2006/01/22 00:09:30 steven Exp $

COMMENT=	"Volume dial for Gkrellm2"

DISTNAME=	gkrellm-volume-2.1.13
PKGNAME=	${DISTNAME}p2
CATEGORIES=	audio sysutils/gkrellm

HOMEPAGE=	http://gkrellm.luon.net/volume.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

MAKE_FLAGS=	SYSLIB="-lossaudio"
WRKDIST=	${WRKDIR}/gkrellm-volume
PLUGIN=		${WRKSRC}/volume.so

EXTRA_WANTLIB=	ossaudio

.include <bsd.port.mk>
