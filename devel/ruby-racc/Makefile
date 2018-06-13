# $OpenBSD: Makefile,v 1.5 2018/06/13 22:26:52 jeremy Exp $

COMMENT =		LALR(1) parser generator for ruby

DISTNAME =		racc-1.4.14
REVISION =		2
CATEGORIES =		devel

HOMEPAGE =		https://github.com/tenderlove/racc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

MODRUBY_TEST =		rake
TEST_DEPENDS =		devel/ruby-hoe,${MODRUBY_FLAVOR} \
			devel/ruby-rake-compiler,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
