# $OpenBSD: Makefile,v 1.7 2019/11/03 14:07:43 jasper Exp $

COMMENT=		recursively merge hashes

DISTNAME=		deep_merge-1.2.1
REVISION=		0
CATEGORIES=		devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/test_deep_merge.rb

.include <bsd.port.mk>
