# $OpenBSD: Makefile,v 1.13 2006/08/03 12:53:18 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		"object-oriented Perl interface to ImageMagick"

VER=			6.2.6
DASHVER=		1
DISTNAME=		ImageMagick-${VER}-${DASHVER}
PKGNAME=		p5-PerlMagick-${VER}.${DASHVER}
CATEGORIES=		graphics devel

HOMEPAGE=		http://www.imagemagick.org
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=imagemagick/}

MAINTAINER=		Bernd Ahlers <bernd@openbsd.org>

# http://www.imagemagick.org/www/Copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext bz2 freetype jasper jbig jpeg \
			lcms m png tiff xml2 z Xt

RUN_DEPENDS=		:ImageMagick-${VER}.${DASHVER}:graphics/ImageMagick
BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		Magick.>=10::graphics/ImageMagick
USE_X11=		Yes
CONFIGURE_STYLE=	perl

WRKDIST=		${WRKDIR}/${DISTNAME:S/-${DASHVER}$//}
WRKSRC=			${WRKDIST}/PerlMagick

pre-configure:
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
