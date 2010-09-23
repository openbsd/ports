# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:29 jeremy Exp $

COMMENT =	system for generating files

DISTNAME =	templater-0.5.0
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	textproc

HOMEPAGE =	http://templater.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=templater/}

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::devel/ruby-highline \
			::devel/ruby-diff-lcs \
			::devel/ruby-extlib

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
