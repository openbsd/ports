# $OpenBSD: Makefile,v 1.11 2013/03/11 11:10:55 espie Exp $

COMMENT =	wrapper for ImageMagick command line tools

DISTNAME =	mini_magick-1.2.5
REVISION =	5
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
