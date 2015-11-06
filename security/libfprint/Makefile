# $OpenBSD: Makefile,v 1.21 2015/11/06 20:37:34 sthen Exp $

COMMENT=	library for fingerprint reader devices

DISTNAME=	libfprint-0.4.0
REVISION=	5

CATEGORIES=    	security

SHARED_LIBS +=  fprint               1.0      # 0.0

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/fprint/libfprint
MASTER_SITES=	http://people.freedesktop.org/~hadess/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE MagickCore-6.Q16 SM X11 Xext Xt bz2 expat fftw3
WANTLIB += fontconfig freetype glib-2.0 lcms2 ltdl lzma m nspr4
WANTLIB += nss3 nssutil3 pcre plc4 plds4 pthread pthread-stubs
WANTLIB += smime3 softokn3 sqlite3 ssl3 usb-1.0 xcb z

MODULES=		devel/gettext

LIB_DEPENDS=		graphics/ImageMagick \
			devel/glib2 \
			devel/libusb1>=1.0.8p3 \
			security/nss

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.68

.include <bsd.port.mk>
