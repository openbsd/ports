# $OpenBSD: Makefile,v 1.32 2016/11/04 21:38:34 jeremy Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.16.0
CATEGORIES =	graphics

HOMEPAGE =	https://github.com/rmagick/rmagick

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

WANTLIB += MagickCore-6.Q16

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS =	${BASE_PKGPATH}
MODRUBY_TEST =	rspec3

.include <bsd.port.mk>
