# $OpenBSD: Makefile,v 1.6 2012/05/15 16:17:27 ajacoutot Exp $

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
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m ossaudio

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
