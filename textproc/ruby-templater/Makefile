# $OpenBSD: Makefile,v 1.13 2013/10/26 23:55:38 jeremy Exp $

COMMENT =	system for generating files

DISTNAME =	templater-1.0.0
REVISION =	3
CATEGORIES =	textproc

HOMEPAGE =	http://templater.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-highline,${MODRUBY_FLAVOR}>=1.4.0 \
			devel/ruby-diff-lcs,${MODRUBY_FLAVOR}>=1.1.2 \
			devel/ruby-extlib,${MODRUBY_FLAVOR}>=0.9.5

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rspec
MODRUBY_TEST_TARGET = spec/*_spec.rb

.include <bsd.port.mk>
