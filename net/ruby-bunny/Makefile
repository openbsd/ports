# $OpenBSD: Makefile,v 1.10 2013/03/11 11:35:56 espie Exp $

COMMENT =	another synchronous Ruby amqp client

DISTNAME =	bunny-0.6.0
REVISION =	5
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
