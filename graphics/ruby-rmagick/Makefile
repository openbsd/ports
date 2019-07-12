# $OpenBSD: Makefile,v 1.35 2019/07/12 21:02:22 sthen Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.16.0
REVISION =	1
CATEGORIES =	graphics

HOMEPAGE =	https://github.com/rmagick/rmagick

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/ruby

WANTLIB += MagickCore-6.Q16 MagickWand-6.Q16

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS =	${BASE_PKGPATH}
MODRUBY_TEST =	rspec3

.include <bsd.port.mk>
