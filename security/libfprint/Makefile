# $OpenBSD: Makefile,v 1.19 2015/03/16 18:07:54 naddy Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.4.0
REVISION=	3

CATEGORIES=    	security

SHARED_LIBS +=  fprint               1.0      # 0.0

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/fprint/libfprint
MASTER_SITES=	http://people.freedesktop.org/~hadess/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += MagickCore bz2 djvulibre fftw3 glib-2.0
WANTLIB += jasper jbig jpeg lcms2 ltdl lzma m nspr4
WANTLIB += nss3 nssutil3 pcre plc4 plds4 png smime3
WANTLIB += softokn3 sqlite3 ssl3 tiff usb-1.0 z
WANTLIB += ICE SM X11 Xext Xt expat fontconfig freetype wmf-0.2
WANTLIB += wmflite-0.2 xcb xml2

MODULES=		devel/gettext

LIB_DEPENDS=		graphics/ImageMagick \
			devel/glib2 \
			devel/libusb1>=1.0.8p3 \
			security/nss


CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68

.include <bsd.port.mk>
