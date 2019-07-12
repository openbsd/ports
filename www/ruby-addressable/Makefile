# $OpenBSD: Makefile,v 1.24 2019/07/12 21:02:29 sthen Exp $

COMMENT =	replacement for Ruby's URI implementation

DISTNAME = 	addressable-2.6.0
CATEGORIES =	www

HOMEPAGE =	https://github.com/sporkmonger/addressable

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		net/ruby-public_suffix,${MODRUBY_FLAVOR},>=2.0.2,<4

MODRUBY_TEST =	rake rspec3
TEST_DEPENDS +=	devel/ruby-rspec/3/its,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
