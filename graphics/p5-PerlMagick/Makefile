# $OpenBSD: Makefile,v 1.7 2005/05/08 18:48:28 brad Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"object-oriented Perl interface to ImageMagick"

VER=		6.2.0
DASHVER=	8
DISTNAME=	ImageMagick-${VER}-${DASHVER}
PKGNAME=	p5-PerlMagick-${VER}.${DASHVER}
CATEGORIES=	graphics devel
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=imagemagick/}

HOMEPAGE=	http://www.imagemagick.org

BUILD_DEPENDS=	:ImageMagick-${VER}:graphics/ImageMagick
RUN_DEPENDS=	:ImageMagick-${VER}:graphics/ImageMagick
LIB_DEPENDS=	Magick.6::graphics/ImageMagick

MAINTAINER=	Dan Brosemer <odin@svartalfheim.net>

# http://www.imagemagick.org/www/Copyright.html
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext bz2 freetype iconv jasper jbig jpeg \
			lcms m png tiff xml2 z

CONFIGURE_STYLE= perl

WRKDIST=	${WRKDIR}/${DISTNAME:S/-${DASHVER}$//}
WRKSRC=		${WRKDIST}/PerlMagick

.include <bsd.port.mk>
