# $OpenBSD: Makefile,v 1.9 2016/06/13 08:24:46 jasper Exp $

COMMENT=		framework for Model Driven Software Development

DISTNAME=		rgen-0.8.1
CATEGORIES=		devel textproc

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://ruby-gen.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

TEST_DEPENDS=		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

# XXX: testrb for ruby 2.2 doesn't exist?
#MODRUBY_TEST=		testrb
#MODRUBY_TEST_TARGET=   test/rgen_test.rb

do-test:
	${RUBY} ${WRKSRC}/test/rgen_test.rb

.include <bsd.port.mk>
