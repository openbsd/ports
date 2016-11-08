# $OpenBSD: Makefile,v 1.33 2016/11/08 14:41:59 sthen Exp $

COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-2.16.0
REVISION =	0
CATEGORIES =	graphics

HOMEPAGE =	https://github.com/rmagick/rmagick

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

WANTLIB += MagickCore-6.Q16 MagickWand-6.Q16

LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS =	${BASE_PKGPATH}
MODRUBY_TEST =	rspec3

.include <bsd.port.mk>
