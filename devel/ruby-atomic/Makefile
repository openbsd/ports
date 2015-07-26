# $OpenBSD: Makefile,v 1.2 2015/07/26 03:31:04 jeremy Exp $

COMMENT =		atomic reference implementation for Ruby

DISTNAME =		atomic-1.1.99
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
