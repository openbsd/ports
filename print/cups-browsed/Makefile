COMMENT=		browse network for remote CUPS queues and IPP printers

V=			2.0.0
DISTNAME=		cups-browsed-${V}

CATEGORIES=		print

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0-with-GPL2-LGPL2-Exception
PERMIT_PACKAGE=		Yes

WANTLIB += avahi-client avahi-common avahi-glib brotlidec brotlienc
WANTLIB += c crypto cups cupsfilters dbus-1 execinfo exif expat
WANTLIB += ffi fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gobject-2.0 hogweed iconv idn2 intl jpeg lcms2
WANTLIB += lzma m nettle p11-kit pcre2-8 png poppler-cpp ppd pthread
WANTLIB += qpdf ssl tasn1 tiff unistring z zstd

SITES=			https://github.com/OpenPrinting/cups-browsed/releases/download/${V}/

# -std=gnu11
COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes

LIB_DEPENDS=		net/avahi,-glib \
			print/libppd

FAKE_FLAGS=		pkgcupsserverrootdir=${PREFIX}/share/examples/cups-filters/cups

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-ldap

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
