# $OpenBSD: Makefile,v 1.5 2010/10/18 16:52:45 espie Exp $

COMMENT=	free library for decoding DTS Coherent Acoustics streams
V=		0.0.5
DISTNAME=	libdca-${V}
REVISION=	1
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
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
