# $OpenBSD: Makefile,v 1.4 2013/10/26 23:55:35 jeremy Exp $

COMMENT =		robust daemon management

DISTNAME =		daemon_controller-0.2.6
REVISION =		1
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
