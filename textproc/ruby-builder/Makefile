# $OpenBSD: Makefile,v 1.16 2013/03/11 11:42:46 espie Exp $

COMMENT=	Ruby library to create XML markup and data structures

DISTNAME=	builder-3.0.0
REVISION =	0
CATEGORIES=	textproc

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	rake
MODRUBY_TEST_TARGET=	-I lib test_all

pre-test:
	rm ${WRKSRC}/test/test_cssbuilder.rb

.include <bsd.port.mk>
