# $OpenBSD: Makefile,v 1.28 2017/11/21 00:13:03 naddy Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.4.0
REVISION=	12

CATEGORIES=    	security

SHARED_LIBS +=  fprint               1.0      # 0.0

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/fprint/libfprint
MASTER_SITES=	http://people.freedesktop.org/~hadess/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  ICE MagickCore-6.Q16 SM X11 Xext Xt bz2 djvulibre expat fftw3
WANTLIB += fontconfig freetype glib-2.0 iconv intl jbig jpeg lcms2 lzma
WANTLIB += m nspr4 nss3 nssutil3 openjp2 pcre plc4 plds4 png pthread
WANTLIB += smime3 sqlite3 ssl3 tiff usb-1.0 webp xcb xml2 z

LIB_DEPENDS=		databases/sqlite3 \
			graphics/ImageMagick \
			devel/glib2 \
			devel/libusb1 \
			security/nss

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68

.include <bsd.port.mk>
