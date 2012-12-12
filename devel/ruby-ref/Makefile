# $OpenBSD: Makefile,v 1.1.1.1 2012/12/12 21:49:37 jeremy Exp $

COMMENT =	object reference utilities for ruby

DISTNAME =	ref-1.0.2
CATEGORIES =	devel

HOMEPAGE=	https://github.com/bdurand/ref

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

MODRUBY_REGRESS = testrb
MODRUBY_REGRESS_TARGET = test/*_test.rb

.include <bsd.port.mk>
