# $OpenBSD: Makefile,v 1.20 2019/07/12 20:45:58 sthen Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-1.3.3
CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	rake
MODRUBY_TEST_TARGET=	test_all

.include <bsd.port.mk>
