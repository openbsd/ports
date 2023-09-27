COMMENT=		library for retro-fitting legacy printer drivers

V=			2.0.0
DISTNAME=		libppd-${V}

SHARED_LIBS +=  ppd                  0.0      # 2.0

CATEGORIES=		print devel

HOMEPAGE=		https://github.com/OpenPrinting/libppd

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache-2.0
PERMIT_PACKAGE=		Yes

SITES=		https://github.com/OpenPrinting/libppd/releases/download/${V}/

WANTLIB += ${COMPILER_LIBCXX} avahi-client avahi-common brotlidec
WANTLIB += brotlienc c crypto cups cupsfilters dbus-1 execinfo
WANTLIB += exif expat fontconfig freetype gmp hogweed iconv idn2
WANTLIB += intl jpeg lcms2 lzma m nettle p11-kit png poppler-cpp
WANTLIB += qpdf ssl tasn1 tiff unistring z zstd

# -std=gnu11
COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes

# default is: --with-pdftops=hybrid (pdftops+gs)
BUILD_DEPENDS +=	print/ghostscript/gnu \
			print/poppler,-utils
RUN_DEPENDS +=		print/ghostscript/gnu \
			print/poppler,-utils

LIB_DEPENDS=		print/libcupsfilters

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-mutool \
			--enable-testppdfile

# XXX conflict with CUPS 2.X; wait for CUPS 3.X
#CONFIGURE_ARGS +=	--enable-ppdc-utils

# default to /usr/bin/pdftops
CONFIGURE_ARGS +=	--with-pdftops-path=${LOCALBASE}/bin/pdftops

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
