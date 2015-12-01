# $OpenBSD: Makefile,v 1.22 2015/12/01 06:51:57 ajacoutot Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.4.0
REVISION=	6

CATEGORIES=    	security

SHARED_LIBS +=  fprint               1.0      # 0.0

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/fprint/libfprint
MASTER_SITES=	http://people.freedesktop.org/~hadess/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE MagickCore-6.Q16 SM X11 Xext Xt bz2 djvulibre expat
WANTLIB += fftw3 fontconfig freetype glib-2.0 jbig jpeg lcms2
WANTLIB += lzma m nspr4 nss3 nssutil3 openjp2 pcre plc4 plds4
WANTLIB += png pthread pthread-stubs smime3 softokn3 sqlite3 ssl3
WANTLIB += tiff usb-1.0 webp xcb xml2 z

MODULES=		devel/gettext

LIB_DEPENDS=		graphics/ImageMagick \
			devel/glib2 \
			devel/libusb1 \
			security/nss

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68

.include <bsd.port.mk>
