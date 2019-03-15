# $OpenBSD: Makefile,v 1.23 2019/03/15 07:32:15 sebastia Exp $

COMMENT =	replacement for Ruby's URI implementation

DISTNAME = 	addressable-2.6.0
CATEGORIES =	www

HOMEPAGE =	https://github.com/sporkmonger/addressable

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=		net/ruby-public_suffix,${MODRUBY_FLAVOR},>=2.0.2,<4

MODRUBY_TEST =	rake rspec3
TEST_DEPENDS +=	devel/ruby-rspec/3/its,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
