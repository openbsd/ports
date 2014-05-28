# $OpenBSD: Makefile,v 1.1.1.1 2014/05/28 21:59:01 jeremy Exp $

COMMENT =		atomic reference implementation for Ruby

DISTNAME =		atomic-1.1.16
CATEGORIES =		devel

HOMEPAGE =		http://github.com/headius/ruby-atomic

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

WANTLIB +=		pthread

CONFIGURE_STYLE =	ruby gem ext

MODRUBY_TEST =		testrb
MODRUBY_TEST_ENV =	RUBYOPT=-rubygems
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
