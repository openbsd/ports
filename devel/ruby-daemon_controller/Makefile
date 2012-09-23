# $OpenBSD: Makefile,v 1.2 2012/09/23 16:57:33 jeremy Exp $

COMMENT =		robust daemon management

DISTNAME =		daemon_controller-0.2.6
REVISION =		0
CATEGORIES =		devel

HOMEPAGE =		https://github.com/FooBarWidget/daemon_controller

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rspec2
MODRUBY_REGRESS_TARGET = spec/daemon_controller_spec.rb

.include <bsd.port.mk>
