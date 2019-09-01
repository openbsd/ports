# $OpenBSD: Makefile,v 1.4 2019/09/01 11:10:23 jasper Exp $

COMMENT =		module for supporting XDG Base Directory Standard

DISTNAME =		xdg-2.2.5
CATEGORIES =		devel

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby
CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		ruby
MODRUBY_TEST_TARGET =	test/test_xdg_legacy.rb

.include <bsd.port.mk>
