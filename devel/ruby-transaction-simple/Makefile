# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:00 sthen Exp $

COMMENT =	generic active transaction support for ruby objects

DISTNAME =	transaction-simple-1.4.0.2
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST =	testrb
MODRUBY_TEST_TARGET =	-I lib test/*.rb

.include <bsd.port.mk>
