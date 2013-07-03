# $OpenBSD: Makefile,v 1.15 2013/07/03 06:56:01 jasper Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-4.9.2
PKGNAME =	${DISTNAME:L}
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}
TEST_DEPENDS =	devel/ruby-minitest,${MODRUBY_FLAVOR}

MODRUBY_TEST =	rake

.include <bsd.port.mk>
