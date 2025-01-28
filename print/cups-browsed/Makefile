COMMENT=		browse network for remote CUPS queues and IPP printers

V=			2.1.1
REVISION=		0
DISTNAME=		cups-browsed-${V}

CATEGORIES=		print

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0-with-GPL2-LGPL2-Exception
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common avahi-glib c crypto cups
WANTLIB += cupsfilters dbus-1 exif expat ffi fontconfig freetype
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gmp gobject-2.0 hogweed
WANTLIB += iconv idn2 intl jpeg lcms2 m nettle p11-kit pcre2-8
WANTLIB += png poppler-cpp ppd pthread qpdf ssl tasn1 tiff unistring
WANTLIB += z

SITES=			https://github.com/OpenPrinting/cups-browsed/releases/download/${V}/

# -std=gnu11
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

USE_GMAKE=		Yes

LIB_DEPENDS=		net/avahi,-glib \
			print/libppd

FAKE_FLAGS=		pkgcupsserverrootdir=${PREFIX}/share/examples/cups-filters/cups

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
