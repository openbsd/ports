# $OpenBSD: Makefile,v 1.12 2012/09/23 16:59:49 jeremy Exp $

COMMENT =	super simple job queue over AMQP

DISTNAME =	minion-0.1.10
REVISION =	5
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-amqp,${MODRUBY_FLAVOR} \
		net/ruby-bunny,${MODRUBY_FLAVOR} \
		converters/ruby-json,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
