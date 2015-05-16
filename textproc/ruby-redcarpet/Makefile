# $OpenBSD: Makefile,v 1.12 2015/05/16 04:41:23 jeremy Exp $

COMMENT=	fast, safe and extensible Markdown to (X)HTML parser

DISTNAME=	redcarpet-3.2.3

CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

MODRUBY_TEST=	testrb
MODRUBY_TEST_TARGET=	test/*_test.rb

.include <bsd.port.mk>
