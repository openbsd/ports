# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:30 espie Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-4.1.4
PKGNAME =	${DISTNAME:L}
REVISION =	7
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
