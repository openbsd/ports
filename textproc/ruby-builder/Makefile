# $OpenBSD: Makefile,v 1.18 2019/07/12 20:50:14 sthen Exp $

COMMENT=	Ruby library to create XML markup and data structures

DISTNAME=	builder-3.0.0
REVISION =	1
CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	rake
MODRUBY_TEST_TARGET=	-I lib test_all

pre-test:
	rm ${WRKSRC}/test/test_cssbuilder.rb

.include <bsd.port.mk>
