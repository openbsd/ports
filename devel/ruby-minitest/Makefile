# $OpenBSD: Makefile,v 1.16 2019/03/14 07:39:59 sebastia Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-5.11.3
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
