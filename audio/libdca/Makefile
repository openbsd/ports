# $OpenBSD: Makefile,v 1.8 2013/03/21 08:45:12 ajacoutot Exp $

COMMENT=	free DTS Coherent Acoustics decoder

V=		0.0.5
DISTNAME=	libdca-${V}
REVISION=	2
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	audio
MASTER_SITES=	http://download.videolan.org/pub/videolan/libdca/${V}/

SHARED_LIBS=	dca	0.0

HOMEPAGE=	http://www.videolan.org/developers/libdca.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ossaudio

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
