# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	system for generating files

DISTNAME =	templater-0.5.0
REVISION =	2
CATEGORIES =	textproc

HOMEPAGE =	http://templater.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-highline,${MODRUBY_FLAVOR} \
			devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-extlib,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
