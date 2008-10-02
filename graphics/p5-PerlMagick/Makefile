# $OpenBSD: Makefile,v 1.23 2008/10/02 20:36:04 simon Exp $

SHARED_ONLY=		Yes

COMMENT=		object-oriented Perl interface to ImageMagick

VER=			6.3.6
DASHVER=		10
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		p5-PerlMagick-${VER}.${DASHVER}p1
CATEGORIES=		graphics devel

HOMEPAGE=		http://www.imagemagick.org
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=imagemagick/}

# http://www.imagemagick.org/script/license.php
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		freetype

RUN_DEPENDS=		:ImageMagick-${VER}.${DASHVER}:graphics/ImageMagick
BUILD_DEPENDS=		${RUN_DEPENDS} \
			::print/ghostscript/gnu:patch
LIB_DEPENDS=		Magick.>=12.1,Wand.>=12.1::graphics/ImageMagick
USE_X11=		Yes

MODULES=		cpan

WRKDIST=		${WRKDIR}/${DISTNAME:S/-${DASHVER}$//}
WRKSRC=			${WRKDIST}/PerlMagick

CFLAGS+=		-I${WRKDIR}

pre-configure:
	@cd ${WRKDIR} && ln -s print/ghostscript/gnu/ghostscript-8.62/src ghostscript
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g; \
		s|%%X11BASE%%|${X11BASE}|g; \
		s|%%CFLAGS%%|${CFLAGS}|g;' ${WRKSRC}/Makefile.PL

pre-regress:
	@perl -pi -e 's|\@abs_top_srcdir\@|${WRKDIST}|g; \
		s|\@abs_top_builddir\@|${WRKDIST}|g; \
		s|\@MAGICK_CODER_MODULE_PATH\@|${WRKDIST}/coder|g; \
		s|\@MAGICK_CONFIGURE_SRC_PATH\@|${WRKDIST}/config|g; \
		s|\@MAGICK_CONFIGURE_BUILD_PATH\@|${WRKDIST}/config|g; \
		s|\@MAGICK_FILTER_MODULE_PATH\@|${WRKDIST}/filters|g;'\
		 < ${WRKDIST}/magick.sh.in > ${WRKDIST}/magick.sh

.include <bsd.port.mk>
