# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:29 espie Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-2.2.2
REVISION =	2
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
