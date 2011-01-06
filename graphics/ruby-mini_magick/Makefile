# $OpenBSD: Makefile,v 1.8 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	wrapper for ImageMagick command line tools

DISTNAME =	mini_magick-1.2.5
REVISION =	3
CATEGORIES =	graphics

HOMEPAGE =	http://mini_magick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		graphics/ImageMagick \
			devel/ruby-hoe,${MODRUBY_FLAVOR}

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	graphics/ImageMagick

.include <bsd.port.mk>
