# $OpenBSD: Makefile,v 1.14 2019/11/03 14:07:43 jasper Exp $

COMMENT=		framework for Model Driven Software Development

DISTNAME=		rgen-0.8.2
REVISION=		0
CATEGORIES=		devel textproc

HOMEPAGE=		http://ruby-gen.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

TEST_DEPENDS=		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}

# XXX: testrb for ruby 2.2 doesn't exist?
#MODRUBY_TEST=		testrb
#MODRUBY_TEST_TARGET=   test/rgen_test.rb

do-test:
	${RUBY} ${WRKSRC}/test/rgen_test.rb

.include <bsd.port.mk>
