# $OpenBSD: Makefile,v 1.7 2020/11/17 03:19:38 jeremy Exp $

COMMENT =		extension language for CSS

DISTNAME =		sass-3.4.22
REVISION =		4
CATEGORIES =		www devel

HOMEPAGE =		http://sass-lang.com


# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

MODRUBY_HANDLE_FLAVORS = No

CONFIGURE_STYLE =	ruby gem
GEM_FLAGS =		--no-format-executable

MODRUBY_TEST =		ruby
MODRUBY_TEST_TARGET =	-I lib -e 'ARGV.each{|f| require f}' test/sass/*.rb

.include <bsd.port.mk>
