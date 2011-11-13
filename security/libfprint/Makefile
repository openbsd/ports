# $OpenBSD: Makefile,v 1.11 2011/11/13 13:54:05 ajacoutot Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.0.6
REVISION =	6
CATEGORIES=    	security

SHARED_LIBS +=  fprint               0.0      # 0.0

HOMEPAGE=	http://reactivated.net/fprint/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fprint/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPL 
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

WANTLIB += MagickCore bz2 crypto djvulibre fftw3 glib-2.0 jasper
WANTLIB += jbig jpeg lcms2 ltdl lzma m pcre png tiff usb usb-1.0
WANTLIB += z

MODULES=		devel/gettext

LIB_DEPENDS=		graphics/ImageMagick \
			devel/glib2 \
			devel/libusb-compat

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CRYPTO_CFLAGS="-I/usr/include" \
			CRYPTO_LIBS="-lcrypto"

.include <bsd.port.mk>
