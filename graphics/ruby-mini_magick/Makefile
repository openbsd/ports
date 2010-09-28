# $OpenBSD: Makefile,v 1.4 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	wrapper for ImageMagick command line tools

DISTNAME =	mini_magick-1.2.5
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
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
			::devel/ruby-hoe

PKG_ARCH =		*

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	:ImageMagick-*:graphics/ImageMagick

.include <bsd.port.mk>
