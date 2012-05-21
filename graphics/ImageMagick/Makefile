# $OpenBSD: Makefile,v 1.121 2012/05/21 13:29:31 okan Exp $

SHARED_ONLY=		Yes

COMMENT=		image processing tools

VER=			6.6.6
DASHVER=		10
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		ImageMagick-${VER}.${DASHVER}
REVISION=		8

SHARED_LIBS +=		Magick++	14.0	# .1.0
SHARED_LIBS +=		MagickCore	2.0	# .1.0
SHARED_LIBS +=		MagickWand	2.0	# .1.0

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
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB =		c bz2>=10 djvulibre fftw3 jasper>=1 jbig>=1.2 jpeg \
			lcms2 lzma ltdl m perl png>=4 pthread stdc++ \
			tiff>=36 z ICE SM X11 Xext Xt expat fontconfig \
			freetype wmf-0.2 wmflite-0.2>=7 xcb xml2>=9

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

USE_LIBTOOL=		Yes
USE_GROFF =		Yes
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
			--with-perl=/usr/bin/perl \
			--without-rsvg \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--disable-ltdl-install

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			PTHREAD_CFLAGS="-pthread" PTHREAD_LIBS="-pthread" \
			ac_cv_path_LaunchDelegate=no

post-install:
	@perl -pi -e s,'-L${WRKBUILD}/(magick|wand)/.libs','',g \
		${PREFIX}/bin/Magick-config
.for f in Magick++ MagickCore MagickWand
	@perl -pi -e s,'-L${WRKBUILD}/(magick|wand)/.libs','',g \
		${PREFIX}/lib/lib${f}.la
.endfor

.include <bsd.port.mk>
