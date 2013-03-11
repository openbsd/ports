# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:30 espie Exp $

COMMENT=	simple library for generating UUIDs

DISTNAME=	uuidtools-2.1.1
REVISION =	2
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=rake rspec
MODRUBY_TEST_TARGET=spec:normal

.include <bsd.port.mk>
