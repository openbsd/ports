# $OpenBSD: Makefile,v 1.21 2021/10/06 21:11:01 jeremy Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-5.11.3
REVISION =	1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
