# $OpenBSD: Makefile,v 1.17 2019/07/12 20:46:00 sthen Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-2.1.5
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=rake rspec
MODRUBY_TEST_TARGET=spec:normal
TEST_DEPENDS+=	textproc/ruby-yard,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
