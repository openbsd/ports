# $OpenBSD: Makefile,v 1.11 2013/10/26 23:55:36 jeremy Exp $

COMMENT =	another synchronous Ruby amqp client

DISTNAME =	bunny-0.6.0
REVISION =	6
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

# requires a functioning amqp server
TEST_IS_INTERACTIVE = Yes

MODRUBY_TEST = rake rspec
MODRUBY_TEST_TARGET = all

.include <bsd.port.mk>
