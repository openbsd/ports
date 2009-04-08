# $OpenBSD: Makefile,v 1.2 2009/04/08 08:56:43 robert Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.0.6
PKGNAME=	${DISTNAME}p0
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

WANTLIB=		iconv intl m
LIB_DEPENDS=		MagickCore.>=1::graphics/ImageMagick \
			glib-2.0.>=0.8::devel/glib2 \
			usb::devel/libusb

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
