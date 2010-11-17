# $OpenBSD: Makefile,v 1.111 2010/11/17 08:05:12 espie Exp $

COMMENT=		image processing tools

VER=			6.4.5
DASHVER=		6
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		ImageMagick-${VER}.${DASHVER}
REVISION =		0

SHARED_LIBS +=		Magick++	13.0	# .1.0
SHARED_LIBS +=		MagickCore	1.0	# .1.0
SHARED_LIBS +=		MagickWand	1.0	# .1.0

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

WANTLIB =		c jpeg m z bz2>=10 jbig>=1.2 png>=4 tiff>=36 \
			lcms>=1 jasper>=1

LIB_DEPENDS =		archivers/bzip2 \
			graphics/jbigkit \
			graphics/png \
			graphics/tiff \
			graphics/lcms \
			graphics/jasper

RUN_DEPENDS=		graphics/netpbm
BUILD_DEPENDS=		graphics/netpbm

# using libltdl stuff
USE_LIBTOOL=		gnu
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-quantum-depth=16 \
			--without-dps \
			--without-fpx \
			--without-gvc \
			--without-lqr \
			--without-modules \
			--without-openexr \
			--without-threads \
			--with-perl=/usr/bin/perl \
			--without-rsvg \
			--with-ltdl-include=${LOCALBASE}/include \
			--with-ltdl-lib=${LOCALBASE}/lib \
			--disable-ltdl-install

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
RUN_DEPENDS +=		print/ghostscript/gnu,no_x11
BUILD_DEPENDS +=	print/ghostscript/gnu,no_x11
CONFIGURE_ENV +=	ac_cv_path_FIGDecodeDelegate=no
CONFIGURE_ARGS +=	--without-x \
			--without-freetype \
			--without-wmf
.else
WANTLIB +=		ICE SM X11 Xau Xdmcp Xext Xt expat fontconfig \
			freetype iconv pthread-stubs xcb wmflite>=7 \
			xml2>=9
LIB_DEPENDS +=		graphics/libwmf \
			textproc/libxml
RUN_DEPENDS +=		print/ghostscript/gnu
RUN_DEPENDS +=		print/transfig
BUILD_DEPENDS +=	print/ghostscript/gnu
BUILD_DEPENDS +=	print/transfig
CONFIGURE_ARGS +=	--with-wmf
.endif

WRKDIST=		${WRKDIR}/${DISTNAME:S/-${DASHVER}$//}

post-install:
	@perl -pi -e s,'-L${WRKBUILD}/(magick|wand)/.libs','',g \
		${PREFIX}/bin/Magick-config
.for f in Magick++ MagickCore MagickWand
	@perl -pi -e s,'-L${WRKBUILD}/(magick|wand)/.libs','',g \
		${PREFIX}/lib/lib${f}.la
.endfor

.include <bsd.port.mk>
