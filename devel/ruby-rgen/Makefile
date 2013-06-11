# $OpenBSD: Makefile,v 1.3 2013/06/11 14:57:59 jasper Exp $

COMMENT=		framework for Model Driven Software Development

DISTNAME=		rgen-0.6.2
REVISION=		0
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
