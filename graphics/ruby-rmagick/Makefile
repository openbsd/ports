COMMENT =	Ruby interface to ImageMagick

DISTNAME =	rmagick-6.0.1
CATEGORIES =	graphics

HOMEPAGE =	https://github.com/rmagick/rmagick

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/ruby

WANTLIB += MagickCore-6.Q16 MagickWand-6.Q16

BUILD_DEPENDS =	devel/ruby-pkg-config,${MODRUBY_FLAVOR}>=1.4,<2
LIB_DEPENDS =	graphics/ImageMagick

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
