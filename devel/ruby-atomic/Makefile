# $OpenBSD: Makefile,v 1.4 2018/06/13 22:26:52 jeremy Exp $

COMMENT =		atomic reference implementation for Ruby

DISTNAME =		atomic-1.1.99
REVISION =		1
CATEGORIES =		devel

HOMEPAGE =		http://github.com/headius/ruby-atomic

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

WANTLIB +=		pthread

CONFIGURE_STYLE =	ruby gem ext

MODRUBY_TEST =		ruby
MODRUBY_TEST_TARGET =	test/test_atomic.rb
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
