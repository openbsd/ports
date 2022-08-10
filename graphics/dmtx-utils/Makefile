COMMENT =		tools for handling data matrix barcodes

GH_ACCOUNT =		dmtx
GH_PROJECT =		dmtx-utils
GH_TAGNAME =		v0.7.6
REVISION =		2

CATEGORIES =		graphics

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2
PERMIT_PACKAGE =		Yes

WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += aom bz2 c dav1d de265 djvulibre dmtx expat fontconfig
WANTLIB += freetype heif iconv jasper jbig jpeg lcms2 lzma m openjp2
WANTLIB += png pthread raw_r tiff webp webpdemux webpmux x265
WANTLIB += xcb xml2 z zstd

LIB_DEPENDS +=		converters/libiconv \
			graphics/ImageMagick \
			graphics/libdmtx

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh

CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
