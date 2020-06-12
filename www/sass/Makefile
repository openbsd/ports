# $OpenBSD: Makefile,v 1.6 2020/06/12 04:43:27 kn Exp $

COMMENT =		extension language for CSS

DISTNAME =		sass-3.4.22
REVISION =		3
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
