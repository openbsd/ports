# $OpenBSD: Makefile,v 1.19 2019/07/12 20:46:00 sthen Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-4.9.2
PKGNAME =	${DISTNAME:L}
REVISION =	2
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

TEST_DEPENDS =	devel/ruby-minitest,${MODRUBY_FLAVOR}

MODRUBY_TEST =	rake

.include <bsd.port.mk>
