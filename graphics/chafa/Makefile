COMMENT =		character art facsimile generator
DISTNAME =		chafa-1.8.0

SHARED_LIBS +=  	chafa                     2.0 # 6.0

CATEGORIES =		graphics

HOMEPAGE =		https://hpjansson.org/chafa/

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += 		ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += 		aom bz2 c dav1d de265 djvulibre expat fontconfig
WANTLIB +=		freetype glib-2.0 heif iconv intl jasper jbig jpeg
WANTLIB += 		lcms2 lzma m openjp2 pcre png pthread raw_r tiff webp
WANTLIB += 		webpdemux webpmux x265 xcb xml2 z zstd

MASTER_SITES =		https://hpjansson.org/chafa/releases/
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2 \
			graphics/ImageMagick

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/chafa.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
