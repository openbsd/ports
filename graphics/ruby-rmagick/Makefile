# $OpenBSD: Makefile,v 1.2 2008/06/14 23:51:46 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	Ruby interface to ImageMagick

DISTNAME=	rmagick-2.2.0
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	graphics

HOMEPAGE=	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rmagick/}

MODULES=	lang/ruby

LIB_DEPENDS=	Magick,Wand::graphics/ImageMagick \
		ruby::lang/ruby

WANTLIB=	ICE SM X11 Xext Xt bz2 c expat fontconfig freetype \
		jasper jbig jpeg lcms m png tiff wmflite xml2 z

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
