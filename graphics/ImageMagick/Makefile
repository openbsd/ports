# $OpenBSD: Makefile,v 1.80 2005/05/01 07:51:28 robert Exp $

COMMENT=	"image processing tools"

VER=		6.2.2
DASHVER=	0
DISTNAME=	ImageMagick-${VER}-${DASHVER}
CATEGORIES=	graphics

HOMEPAGE=	http://www.imagemagick.org

MASTER_SITES=	${HOMEPAGE}/download/ \
		${MASTER_SITE_SOURCEFORGE:=imagemagick/}

LIB_DEPENDS+=	bz2.10::archivers/bzip2 \
		jbig.1.2::graphics/jbigkit \
		png.2::graphics/png \
		tiff.35::graphics/tiff \
		xml2.6::textproc/libxml \
		lcms::graphics/lcms \
		jasper::graphics/jasper \
		ltdl::devel/libtool

RUN_DEPENDS	::graphics/mpeg-lib
BUILD_DEPENDS=	${RUN_DEPENDS}

MAINTAINER=	Brad Smith <brad@openbsd.org>

# http://www.imagemagick.org/www/Copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c iconv jpeg m z

SUBST_VARS=	VER

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.59
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --with-quantum-depth=16 \
		 --without-dot \
		 --without-dps \
		 --without-fpx \
		 --without-modules \
		 --without-threads \
		 --without-perl \
		 --without-wmf \
		 --disable-ltdl-install

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include/libxml2 -I${LOCALBASE}/include" \
		LDFLAGS="-L${WRKBUILD}/magick/.libs -L${LOCALBASE}/lib" \
		ac_cv_path_LaunchDelegate=no

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
BUILD_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu,no_x11
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu,no_x11
CONFIGURE_ARGS+= --without-x --without-ttf
CONFIGURE_ENV+=	ac_cv_path_FIGDecodeDelegate=no
.else
BUILD_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
RUN_DEPENDS+=	:ghostscript-*:print/ghostscript/gnu
USE_X11=	Yes
RUN_DEPENDS+=	:transfig-*:print/transfig
BUILD_DEPENDS+=	:transfig-*:print/transfig
WANTLIB+=	ICE SM X11 Xext Xt freetype
.endif

RUN_DEPENDS+=	:netpbm-*:graphics/netpbm
BUILD_DEPENDS+=	:netpbm-*:graphics/netpbm

WRKDIST=	${WRKDIR}/${DISTNAME:S/-${DASHVER}$//}

pre-configure:
	@if pkg dependencies check ImageMagick-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "+-------------------"; \
			echo 1>&2 "| Error: you must remove the existing ImageMagick installation"; \
			echo 1>&2 "| before compiling this version. To fully remove run"; \
			echo 1>&2 "| these commands as user root"; \
			echo 1>&2 "|"; \
			echo 1>&2 "|      pkg_delete `pkg_info -e 'ImageMagick-*'`"; \
			echo 1>&2 "|"; \
			echo 1>&2 "+-------------------"; \
			exit 1; \
		fi; \
	fi

post-install:
	@perl -pi -e s#'-L${WRKBUILD}/magick/.libs '#''#g \
		${PREFIX}/bin/Magick-config
.for f in Magick++ Magick Wand
	@perl -pi -e s#'-L${WRKBUILD}/magick/.libs '#''#g \
		${PREFIX}/lib/lib${f}.la
.endfor

.include <bsd.port.mk>
