# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:29 espie Exp $

COMMENT =		robust daemon management

DISTNAME =		daemon_controller-0.2.6
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		https://github.com/FooBarWidget/daemon_controller

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rspec2
MODRUBY_TEST_TARGET = spec/daemon_controller_spec.rb

.include <bsd.port.mk>
