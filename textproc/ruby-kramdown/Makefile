# $OpenBSD: Makefile,v 1.11 2019/05/29 09:27:01 fcambus Exp $

COMMENT=	fast, pure Ruby Markdown parser

DISTNAME=	kramdown-1.17.0

CATEGORIES=	textproc

HOMEPAGE=	https://kramdown.gettalong.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	ruby
MODRUBY_TEST_TARGET =	${WRKSRC}/test/run_tests.rb

.include <bsd.port.mk>
