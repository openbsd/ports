# $OpenBSD: Makefile,v 1.15 2013/10/26 23:55:35 jeremy Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-2.2.2
REVISION =	3
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
