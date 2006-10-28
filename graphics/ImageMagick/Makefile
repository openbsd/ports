# $OpenBSD: Makefile,v 1.92 2006/10/28 16:20:52 steven Exp $

COMMENT=		"image processing tools"

VER=			6.3.0
DASHVER=		0
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		ImageMagick-${VER}.${DASHVER}
SHARED_LIBS=		Magick++	11.0	\
			Magick		11.0	\
			Wand		11.0

CATEGORIES=		graphics
MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

HOMEPAGE=		http://www.imagemagick.org

MASTER_SITES=		${HOMEPAGE}/download/ \
			${MASTER_SITE_SOURCEFORGE:=imagemagick/}

# http://www.imagemagick.org/script/license.php
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c iconv jpeg m z

LIB_DEPENDS=		bz2.>=10::archivers/bzip2 \
			jbig.>=1.2::graphics/jbigkit \
			png.>=4::graphics/png \
			tiff.>=36::graphics/tiff \
			xml2.>=9::textproc/libxml \
			lcms.>=1::graphics/lcms \
			jasper.>=1::graphics/jasper

RUN_DEPENDS=		:netpbm-*:graphics/netpbm
BUILD_DEPENDS=		:netpbm-*:graphics/netpbm
REGRESS_DEPENDS= 	:p5-PerlMagick-${VER}.${DASHVER}:graphics/p5-PerlMagick

USE_LIBTOOL=		Yes
SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-quantum-depth=16 \
			--without-dot \
			--without-dps \
			--without-fpx \
			--without-modules \
			--without-threads \
			--without-perl \
			--without-wmf \
			--disable-ltdl-install

CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/magick/.libs -L${WRKBUILD}/wand/.libs -L${LOCALBASE}/lib" \
			ac_cv_path_LaunchDelegate=no

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
BUILD_DEPENDS+=		:ghostscript-*:print/ghostscript/gnu,no_x11
RUN_DEPENDS+=		:ghostscript-*:print/ghostscript/gnu,no_x11
CONFIGURE_ARGS+=	--without-x --without-ttf
CONFIGURE_ENV+=		ac_cv_path_FIGDecodeDelegate=no
.else
BUILD_DEPENDS+=		:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS+=		:ghostscript-*:print/ghostscript/gnu
USE_X11=		Yes
RUN_DEPENDS+=		:transfig-*:print/transfig
BUILD_DEPENDS+=		:transfig-*:print/transfig
WANTLIB+=		ICE SM X11 Xext Xt freetype
.endif

WRKDIST=		${WRKDIR}/${DISTNAME:S/-${DASHVER}$//}

post-extract:
	@rm -f ${WRKDIST}/utilities/*.1

post-install:
	@perl -pi -e s#'-L${WRKBUILD}/(magick|wand)/.libs '#''#g \
		${PREFIX}/bin/Magick-config
.for f in Magick++ Magick Wand
	@perl -pi -e s#'-L${WRKBUILD}/(magick|wand)/.libs '#''#g \
		${PREFIX}/lib/lib${f}.la
.endfor

.include <bsd.port.mk>
