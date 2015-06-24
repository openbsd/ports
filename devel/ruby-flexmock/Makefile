# $OpenBSD: Makefile,v 1.19 2015/06/24 07:08:28 jasper Exp $

COMMENT=	simple mock object for unit testing

DISTNAME=	flexmock-1.3.3
CATEGORIES=	devel

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	rake
MODRUBY_TEST_TARGET=	test_all

.include <bsd.port.mk>
