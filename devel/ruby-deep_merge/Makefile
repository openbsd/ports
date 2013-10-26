# $OpenBSD: Makefile,v 1.2 2013/10/26 23:55:35 jeremy Exp $

COMMENT=		recursively merge hashes

DISTNAME=		deep_merge-1.0.0
REVISION =		0
CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=		testrb
MODRUBY_TEST_TARGET=	test/test_deep_merge.rb

.include <bsd.port.mk>
