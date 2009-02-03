# $OpenBSD: Makefile,v 1.1.1.1 2009/02/03 12:33:25 pirofti Exp $

COMMENT =	color value conversion and modification

DISTNAME =	color-1.4.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	graphics

HOMEPAGE =	http://color.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=color/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-archive-tar-minitar->=0.5.0:archivers/ruby-archive-tar-minitar \
			::devel/ruby-hoe

PKG_ARCH =		*

do-regress:
	@cd ${WRKBUILD}/test && ${RUBY} test_all.rb

.include <bsd.port.mk>
