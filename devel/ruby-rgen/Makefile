# $OpenBSD: Makefile,v 1.1.1.1 2013/06/10 14:37:27 jasper Exp $

COMMENT=		framework for Model Driven Software Development

DISTNAME=		rgen-0.6.2
CATEGORIES=		devel textproc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

#Does not resolve at the moment.
#HOMEPAGE=		http://ruby-gen.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby
MODRUBY_REV=		1.8

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/rgen_test.rb

.include <bsd.port.mk>
