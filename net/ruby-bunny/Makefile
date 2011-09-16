# $OpenBSD: Makefile,v 1.7 2011/09/16 11:13:40 espie Exp $

COMMENT =	another synchronous Ruby amqp client

DISTNAME =	bunny-0.6.0
REVISION =	4
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

# requires a functioning amqp server
REGRESS_IS_INTERACTIVE = Yes

MODRUBY_REGRESS = rake rspec
RSPEC_REGRESS_TARGET = all

.include <bsd.port.mk>
