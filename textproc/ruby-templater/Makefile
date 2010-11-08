# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	system for generating files

DISTNAME =	templater-0.5.0
REVISION =      1
CATEGORIES =	textproc

HOMEPAGE =	http://templater.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-highline-*:devel/ruby-highline,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-diff-lcs-*:devel/ruby-diff-lcs,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-extlib-*:devel/ruby-extlib,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
