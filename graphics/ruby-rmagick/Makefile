# $OpenBSD: Makefile,v 1.30 2015/12/29 20:21:07 jasper Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.15.4
CATEGORIES =	graphics

HOMEPAGE =	http://rmagick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

WANTLIB += MagickCore-6.Q16

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS =	${BASE_PKGPATH}
MODRUBY_TEST =	rspec3

.include <bsd.port.mk>
