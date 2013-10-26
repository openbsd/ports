# $OpenBSD: Makefile,v 1.13 2013/10/26 23:55:36 jeremy Exp $

COMMENT =	simple AMQP driver for Ruby

DISTNAME =	amqp-0.6.7
REVISION =	5
CATEGORIES =	net

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/ruby-eventmachine,${MODRUBY_FLAVOR}

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-bacon,${MODRUBY_FLAVOR} 
MODRUBY_TEST =	rake 
MODRUBY_TEST_TARGET = spec

.include <bsd.port.mk>
