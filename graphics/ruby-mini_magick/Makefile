# $OpenBSD: Makefile,v 1.1.1.1 2009/02/03 12:38:38 pirofti Exp $

COMMENT =	wrapper for ImageMagick command line tools

DISTNAME =	mini_magick-1.2.3
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	graphics

HOMEPAGE =	http://mini_magick.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=mini-magick/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ImageMagick-*:graphics/ImageMagick \
			::devel/ruby-hoe

PKG_ARCH =		*

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} test_mini_magick_test.rb

.include <bsd.port.mk>
