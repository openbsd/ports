# $OpenBSD: Makefile,v 1.7 2010/12/08 22:47:14 jeremy Exp $

COMMENT =	system for generating files

DISTNAME =	templater-1.0.0
CATEGORIES =	textproc

HOMEPAGE =	http://templater.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-highline,${MODRUBY_FLAVOR}>=1.4.0 \
			devel/ruby-diff-lcs,${MODRUBY_FLAVOR}>=1.1.2 \
			devel/ruby-extlib,${MODRUBY_FLAVOR}>=0.9.5

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
