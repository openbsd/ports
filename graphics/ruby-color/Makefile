# $OpenBSD: Makefile,v 1.3 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	color value conversion and modification

DISTNAME =	color-1.4.0
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	graphics

HOMEPAGE =	http://color.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-archive-tar-minitar->=0.5.0:archivers/ruby-archive-tar-minitar \
			::devel/ruby-hoe

PKG_ARCH =		*

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} test_all.rb

.include <bsd.port.mk>
