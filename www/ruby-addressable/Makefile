# $OpenBSD: Makefile,v 1.20 2015/11/17 10:22:18 jasper Exp $

COMMENT =	replacement for Ruby's URI implementation

DISTNAME = 	addressable-2.3.8
CATEGORIES =	www

HOMEPAGE =	http://addressable.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake rspec3
TEST_DEPENDS +=	devel/ruby-rspec/3/its,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
