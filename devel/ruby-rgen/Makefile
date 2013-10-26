# $OpenBSD: Makefile,v 1.4 2013/10/26 23:55:36 jeremy Exp $

COMMENT=		framework for Model Driven Software Development

DISTNAME=		rgen-0.6.2
REVISION=		1
CATEGORIES=		devel textproc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

#Does not resolve at the moment.
#HOMEPAGE=		http://ruby-gen.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/rgen_test.rb

.include <bsd.port.mk>
