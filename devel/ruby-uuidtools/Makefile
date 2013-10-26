# $OpenBSD: Makefile,v 1.15 2013/10/26 23:55:36 jeremy Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-2.1.1
REVISION =	3
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=rake rspec
MODRUBY_TEST_TARGET=spec:normal

.include <bsd.port.mk>
