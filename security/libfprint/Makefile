# $OpenBSD: Makefile,v 1.1.1.1 2009/03/24 19:01:04 robert Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.0.6
CATEGORIES=    	security

SHARED_LIBS=	fprint 0.0

HOMEPAGE=	http://reactivated.net/fprint/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fprint/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB=		c
LIB_DEPENDS=		MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick \
			usb::devel/libusb

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
