COMMENT =		character art facsimile generator
DISTNAME =		chafa-1.6.1

SHARED_LIBS +=  	chafa                     1.0 # 5.0

CATEGORIES =		graphics

HOMEPAGE =		https://hpjansson.org/chafa/

MAINTAINER =		Florian Viehweger <openbsd@out-of-creativity.de>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += 		ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xext Xt
WANTLIB += 		bz2 c djvulibre expat fftw3 fontconfig freetype glib-2.0
WANTLIB += 		iconv intl jasper jbig jpeg lcms2 lzma m openjp2 pcre
WANTLIB += 		png pthread raw_r tiff webp webpdemux webpmux xcb xml2
WANTLIB += 		z zstd

MASTER_SITES =		https://hpjansson.org/chafa/releases/
EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2 \
			graphics/ImageMagick

CONFIGURE_STYLE =	gnu

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/chafa.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
