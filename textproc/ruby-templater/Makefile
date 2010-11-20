# $OpenBSD: Makefile,v 1.5 2010/11/20 19:56:52 espie Exp $

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
RUN_DEPENDS =		devel/ruby-highline,${FLAVOR} \
			devel/ruby-diff-lcs,${FLAVOR} \
			devel/ruby-extlib,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
