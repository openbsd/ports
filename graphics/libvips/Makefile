# $OpenBSD: Makefile,v 1.1.1.1 2020/05/15 07:58:41 denis Exp $

COMMENT =	fast image processing library with low memory needs

VERSION =	8.9.2
DISTNAME =	vips-${VERSION}
PKGNAME =	lib${DISTNAME}

CATEGORIES =	graphics

SHARED_LIBS +=  vips       0.0
SHARED_LIBS +=  vips-cpp   0.0

HOMEPAGE =	https://libvips.github.io/libvips/

MAINTAINER =	Stephane Guedon <stephane@22decembre.eu>

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c expat ffi gif glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 iconv intl jpeg lzma m pcre
WANTLIB += png tiff webp webpdemux webpmux z zstd

MASTER_SITES =	https://github.com/libvips/libvips/releases/download/v${VERSION}/

LIB_DEPENDS +=	archivers/xz	\
		archivers/zstd	\
		devel/glib2	\
		graphics/giflib \
		graphics/jpeg	\
		graphics/libwebp \
		graphics/png	\
		graphics/tiff

USE_GMAKE =		Yes
COMPILER =		base-clang ports-gcc
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--disable-gtk-doc \
			--disable-gtk-doc-html \
			--disable-introspection \
			--with-analyze \
			--with-giflib \
			--with-png \
			--with-tiff \
			--with-ppm \
			--with-radiance \
			--with-jpeg \
			--with-libwebp \
			--without-magick \
			--without-matio \
			--without-nifti \
			--without-openslide \
			--without-orc \
			--without-pangoft2 \
			--without-pdfium \
			--without-poppler \
			--without-rsvg \
			--without-OpenEXR \
			--without-lcms \
			--without-libexif \
			--without-gsf \
			--without-heif \
			--without-imagequant \
			--without-cfitsio \
			--without-fftw

.include <bsd.port.mk>
