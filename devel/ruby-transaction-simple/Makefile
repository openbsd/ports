# $OpenBSD: Makefile,v 1.16 2014/09/19 20:21:05 jeremy Exp $

COMMENT =	generic active transaction support for ruby objects

DISTNAME =	transaction-simple-1.4.0.2
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST =	testrb
MODRUBY_TEST_TARGET =	-I lib test/*.rb

.include <bsd.port.mk>
