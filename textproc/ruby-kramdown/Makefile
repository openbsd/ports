# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:15 sthen Exp $

COMMENT=	fast, pure Ruby Markdown parser

DISTNAME=	kramdown-1.17.0

CATEGORIES=	textproc

HOMEPAGE=	https://kramdown.gettalong.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	ruby
MODRUBY_TEST_TARGET =	${WRKSRC}/test/run_tests.rb

.include <bsd.port.mk>
