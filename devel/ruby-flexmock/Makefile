# $OpenBSD: Makefile,v 1.18 2013/10/26 23:55:35 jeremy Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-0.8.6
REVISION =	6
CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	rake
MODRUBY_TEST_TARGET=	test_all

.include <bsd.port.mk>
