# $OpenBSD: Makefile,v 1.4 2009/06/01 20:35:02 jasper Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.0.6
PKGNAME=	${DISTNAME}p1
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

WANTLIB=		c crypto
LIB_DEPENDS=		MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick \
			usb::devel/libusb

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CRYPTO_CFLAGS="-I/usr/include" \
			CRYPTO_LIBS="-lcrypto"

.include <bsd.port.mk>
