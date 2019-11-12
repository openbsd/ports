# $OpenBSD: Makefile,v 1.7 2019/11/12 06:43:14 jeremy Exp $

COMMENT =		LALR(1) parser generator for ruby

DISTNAME =		racc-1.4.15
CATEGORIES =		devel

HOMEPAGE =		https://github.com/tenderlove/racc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

MODRUBY_TEST =		rake
TEST_DEPENDS =		devel/ruby-hoe,${MODRUBY_FLAVOR} \
			devel/ruby-rake-compiler,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
