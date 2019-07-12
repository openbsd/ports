# $OpenBSD: Makefile,v 1.6 2019/07/12 20:45:58 sthen Exp $

COMMENT=		recursively merge hashes

DISTNAME=		deep_merge-1.2.1
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/test_deep_merge.rb

.include <bsd.port.mk>
