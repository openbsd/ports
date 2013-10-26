# $OpenBSD: Makefile,v 1.12 2013/10/26 23:55:36 jeremy Exp $

COMMENT =	wrapper for ImageMagick command line tools

DISTNAME =	mini_magick-1.2.5
REVISION =	6
CATEGORIES =	graphics

HOMEPAGE =	http://mini_magick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		graphics/ImageMagick \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

MODRUBY_TEST =	rake

TEST_DEPENDS =	graphics/ImageMagick

.include <bsd.port.mk>
