# $OpenBSD: Makefile,v 1.7 2014/09/06 07:58:16 jasper Exp $

COMMENT=		framework for Model Driven Software Development

DISTNAME=		rgen-0.7.0
CATEGORIES=		devel textproc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/rgen_test.rb

.include <bsd.port.mk>
