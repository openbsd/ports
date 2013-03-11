# $OpenBSD: Makefile,v 1.13 2013/03/11 11:35:56 espie Exp $

COMMENT =	super simple job queue over AMQP

DISTNAME =	minion-0.1.10
REVISION =	5
CATEGORIES =	net

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-amqp,${MODRUBY_FLAVOR} \
		net/ruby-bunny,${MODRUBY_FLAVOR} \
		converters/ruby-json,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
