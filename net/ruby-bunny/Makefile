# $OpenBSD: Makefile,v 1.1.1.1 2009/11/22 00:20:58 msf Exp $

COMMENT =	another synchronous Ruby amqp client

DISTNAME =	bunny-0.6.0
PKGNAME =	ruby-${DISTNAME}
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
