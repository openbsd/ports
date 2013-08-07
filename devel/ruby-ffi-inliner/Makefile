# $OpenBSD: Makefile,v 1.6 2013/08/07 21:57:50 naddy Exp $

COMMENT =	embed C code in your ruby script

DISTNAME =	ffi-inliner-0.2.4
CATEGORIES =	devel
REVISION =	2

HOMEPAGE =	https://github.com/remogatto/ffi-inliner

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR}

# 1 failure because we don't support the optional tcc dependency
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST =	rspec
MODRUBY_TEST_ENV =	LD_PRELOAD=/usr/lib/libpthread.so
MODRUBY_TEST_TARGET=	spec/ffi-inliner/inliner_spec.rb

.include <bsd.port.mk>
