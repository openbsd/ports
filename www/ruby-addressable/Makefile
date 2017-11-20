# $OpenBSD: Makefile,v 1.22 2017/11/20 20:57:17 jeremy Exp $

COMMENT =	replacement for Ruby's URI implementation

DISTNAME = 	addressable-2.4.0
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	https://github.com/sporkmonger/addressable

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake rspec3
TEST_DEPENDS +=	devel/ruby-rspec/3/its,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
