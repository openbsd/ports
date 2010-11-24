# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	wrapper for ImageMagick command line tools

DISTNAME =	mini_magick-1.2.5
REVISION =	2
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
