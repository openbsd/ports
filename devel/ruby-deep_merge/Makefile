# $OpenBSD: Makefile,v 1.4 2016/08/13 08:51:21 jasper Exp $

COMMENT=		recursively merge hashes

DISTNAME=		deep_merge-1.1.1
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/test_deep_merge.rb

.include <bsd.port.mk>
