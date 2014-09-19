# $OpenBSD: Makefile,v 1.13 2014/09/19 20:12:26 jeremy Exp $

COMMENT =	wrapper for ImageMagick command line tools

DISTNAME =	mini_magick-1.2.5
REVISION =	7
CATEGORIES =	graphics

HOMEPAGE =	http://mini_magick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		graphics/ImageMagick

MODRUBY_TEST =	rake

TEST_DEPENDS =	graphics/ImageMagick

.include <bsd.port.mk>
