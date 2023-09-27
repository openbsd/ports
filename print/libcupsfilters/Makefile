COMMENT=		library for developing printing filters

V=			2.0.0
DISTNAME=		libcupsfilters-${V}
REVISION=		0

SHARED_LIBS +=  cupsfilters          2.0      # 2.0

CATEGORIES=		print devel

HOMEPAGE=		https://github.com/OpenPrinting/libcupsfilters

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

SITES=	https://github.com/OpenPrinting/libcupsfilters/releases/download/${V}/

WANTLIB += ${COMPILER_LIBCXX} avahi-client avahi-common brotlidec
WANTLIB += brotlienc crypto cups dbus-1 execinfo exif expat fontconfig
WANTLIB += freetype gmp gnutls hogweed iconv idn2 intl jpeg lcms2
WANTLIB += lzma m nettle openjp2 p11-kit png poppler poppler-cpp
WANTLIB += qpdf ssl tasn1 tiff unistring z zstd

# -std=c++17
COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes

# CUPS_GHOSTSCRIPT in cupsfilters/ghostscript.c
BUILD_DEPENDS +=	print/ghostscript/gnu
RUN_DEPENDS +=		print/ghostscript/gnu

# don't enforce dependency on colord; it'll be used if found at runtime
#RUN_DEPENDS +=		graphics/colord

LIB_DEPENDS=		graphics/libexif \
			print/cups,-libs \
			print/poppler \
			print/qpdf

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		--with-test-font-path=${X11BASE}/lib/X11/fonts/TTF/DejaVuSans.ttf \
			--disable-mutool

# XXX
# /usr/local/include/lcms2.h:1297:44: error: ISO C++17 does not allow 'register' storage class specifier [-Wregister]
#                                            CMSREGISTER void * Cargo);
CXXFLAGS +=		-DCMS_NO_REGISTER_KEYWORD

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
