# $OpenBSD: Makefile,v 1.4 2008/11/20 14:12:52 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby interface to ImageMagick

DISTNAME=	rmagick-2.7.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	graphics

HOMEPAGE=	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rmagick/}

MODULES=	lang/ruby

LIB_DEPENDS=	MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick \
		ruby::lang/ruby

WANTLIB=	ICE SM X11 Xext Xt bz2 c expat fontconfig freetype \
		jasper jbig jpeg lcms m png tiff wmflite xml2 z

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
