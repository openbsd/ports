# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	wrapper for ImageMagick command line tools

DISTNAME =	mini_magick-1.2.5
REVISION =      1
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
RUN_DEPENDS =		:ImageMagick-*:graphics/ImageMagick \
			:${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR}

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	:ImageMagick-*:graphics/ImageMagick

.include <bsd.port.mk>
