# $OpenBSD: Makefile,v 1.2 2018/06/04 01:47:30 sthen Exp $

COMMENT =		module for supporting XDG Base Directory Standard

DISTNAME =		xdg-2.2.3
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		ruby
MODRUBY_TEST_TARGET =	test/test_xdg_legacy.rb

.include <bsd.port.mk>
