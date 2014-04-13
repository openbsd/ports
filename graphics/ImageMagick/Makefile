# $OpenBSD: Makefile,v 1.133 2014/04/13 01:01:39 naddy Exp $

SHARED_ONLY=		Yes

COMMENT=		image processing tools

VER=			6.7.7
DASHVER=		7
REVISION=		6
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		ImageMagick-${VER}.${DASHVER}

SHARED_LIBS +=		Magick++	15.0	# .1.0
SHARED_LIBS +=		MagickCore	3.0	# .1.0
SHARED_LIBS +=		MagickWand	3.0	# .1.0

CATEGORIES=		graphics

HOMEPAGE=		http://www.imagemagick.org

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=imagemagick/} \
			${HOMEPAGE}/download/ \
			ftp://ftp.fu-berlin.de/unix/X11/graphics/ImageMagick/ \
			ftp://ftp.fu-berlin.de/unix/X11/graphics/ImageMagick/legacy/ \
			http://gd.tuwien.ac.at/graphics/ImageMagick/ \
			http://gd.tuwien.ac.at/graphics/ImageMagick/legacy/

# http://www.imagemagick.org/script/license.php
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =		ICE SM X11 Xext Xt c bz2 djvulibre expat fftw3 \
			fontconfig freetype jasper jbig jpeg lcms2 lzma \
			ltdl m perl png pthread pthread-stubs stdc++ \
			tiff wmflite-0.2 wmf-0.2 xcb xml2 z

MODULES =		converters/libiconv

LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz \
			devel/libtool,-ltdl \
			graphics/djvulibre \
			graphics/jbigkit \
			graphics/png \
			graphics/tiff \
			graphics/lcms2 \
			graphics/libwmf \
			graphics/jasper \
			math/fftw3 \
			textproc/libxml

RUN_DEPENDS =		graphics/netpbm \
			print/ghostscript/gnu \
			print/transfig
BUILD_DEPENDS =		${RUN_DEPENDS}

ALL_TARGET=		all perl-build

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-quantum-depth=16 \
			--with-wmf \
			--without-dps \
			--without-fpx \
			--without-gvc \
			--without-lqr \
			--without-modules \
			--without-openexr \
			--without-pango \
			--with-perl \
			--without-rsvg \
			--without-webp \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--disable-ltdl-install

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			PTHREAD_CFLAGS="-pthread" PTHREAD_LIBS="-pthread" \
			ac_cv_path_LaunchDelegate=no \
			ac_cv_lib_wmflite_wmf_lite_create=no

pre-configure:
	cd ${WRKSRC}; ${SUBST_CMD} $$(find . -name '*.pc.in')

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ImageMagick
.for i in coder.xml colors.xml delegates.xml log.xml magic.xml \
	mime.xml policy.xml quantization-table.xml \
	thresholds.xml type-dejavu.xml type-ghostscript.xml \
	type-windows.xml type.xml
	${INSTALL_DATA} ${WRKSRC}/config/$i ${PREFIX}/share/examples/ImageMagick
.endfor

.include <bsd.port.mk>
