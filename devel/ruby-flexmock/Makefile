# $OpenBSD: Makefile,v 1.17 2013/03/11 10:50:29 espie Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-0.8.6
REVISION =	5
CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	rake
MODRUBY_TEST_TARGET=	test_all

.include <bsd.port.mk>
