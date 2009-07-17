# $OpenBSD: Makefile,v 1.2 2009/07/17 17:00:06 jolan Exp $

COMMENT=	free library for decoding DTS Coherent Acoustics streams
V=		0.0.5
DISTNAME=	libdca-${V}
PKGNAME=	libdca-${V}p0
EXTRACT_SUFX=	.tar.bz2
SHARED_LIBS=	dca	0.0
CATEGORIES=	audio
MASTER_SITES=	http://download.videolan.org/pub/videolan/libdca/${V}/

HOMEPAGE=	http://www.videolan.org/developers/libdca.html

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c m ossaudio

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
