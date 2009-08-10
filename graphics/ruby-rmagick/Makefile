# $OpenBSD: Makefile,v 1.6 2009/08/10 16:37:12 msf Exp $

SHARED_ONLY =	Yes

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.9.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	graphics

HOMEPAGE =	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=rmagick/}

MODULES =	lang/ruby

WANTLIB =	c freetype m z

LIB_DEPENDS =	${MODRUBY_LIB_DEPENDS} \
		MagickCore.>=1,MagickWand.>=1::graphics/ImageMagick \

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
