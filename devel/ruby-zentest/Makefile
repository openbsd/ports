# $OpenBSD: Makefile,v 1.18 2014/10/11 19:54:46 jeremy Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-4.9.2
PKGNAME =	${DISTNAME:L}
REVISION =	2
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

TEST_DEPENDS =	devel/ruby-minitest,${MODRUBY_FLAVOR}

MODRUBY_TEST =	rake

.include <bsd.port.mk>
