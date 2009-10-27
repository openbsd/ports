# $OpenBSD: Makefile,v 1.6 2009/10/27 06:16:03 jasper Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.0.6
PKGNAME=	${DISTNAME}p3
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

WANTLIB=		crypto iconv intl m
LIB_DEPENDS=		MagickCore.>=1::graphics/ImageMagick \
			glib-2.0.>=0.8::devel/glib2 \
			usb::devel/libusb

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CRYPTO_CFLAGS="-I/usr/include" \
			CRYPTO_LIBS="-lcrypto"

.include <bsd.port.mk>
