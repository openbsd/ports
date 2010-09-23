# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:28 jeremy Exp $

COMMENT =	another synchronous Ruby amqp client

DISTNAME =	bunny-0.6.0
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES =	${MASTER_SITE_GEMCUTTER}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

# requires a functioning amqp server
REGRESS_IS_INTERACTIVE = Yes

MODRUBY_REGRESS = rake rspec
RSPEC_REGRESS_TARGET = all

.include <bsd.port.mk>
