COMMENT=		library for developing printing filters

#V=			2.2.1
#DISTNAME=		libcupsfilters-${V}
#REVISION=		2

GH_ACCOUNT=		OpenPrinting
GH_PROJECT=		libcupsfilters
# Date: Tue, 22 Sep 2026 01:52:16 +0800
GH_COMMIT=		3b7b574e4080ec06f508c8886b9371a00e6630a5
DISTNAME=		libcupsfilters-2.2.2pre0

SHARED_LIBS +=  cupsfilters          2.1      # 2.0

CATEGORIES=		print devel

HOMEPAGE=		https://github.com/OpenPrinting/libcupsfilters

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

#SITES=			https://github.com/OpenPrinting/libcupsfilters/releases/download/${V}/

WANTLIB += ${COMPILER_LIBCXX} Lerc avahi-client avahi-common brotlicommon
WANTLIB += brotlidec brotlienc crypto cups dbus-1 exif expat fontconfig
WANTLIB += freetype hwy iconv intl jpeg jxl jxl_cms lcms2 lzma
WANTLIB += m pdfio png ssl tiff z zstd

USE_GMAKE=		Yes

# CUPS_GHOSTSCRIPT in cupsfilters/ghostscript.c
BUILD_DEPENDS +=	print/ghostscript/gnu
RUN_DEPENDS +=		print/ghostscript/gnu

# pdftoppm
BUILD_DEPENDS +=	print/poppler,-utils
RUN_DEPENDS +=		print/poppler,-utils

# don't enforce dependency on colord; it'll be used if found at runtime
#RUN_DEPENDS +=		graphics/colord

LIB_DEPENDS=		graphics/libexif \
			graphics/libjxl \
			print/cups,-libs \
			print/pdfio

AUTOCONF_VERSION=	2.73
AUTOMAKE_VERSION=	1.19
BUILD_DEPENDS +=	devel/gettext,-tools

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--with-test-font-path=${X11BASE}/lib/X11/fonts/TTF/DejaVuSans.ttf \
			--disable-mutool

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
