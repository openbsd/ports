# $OpenBSD: Makefile,v 1.3 2016/11/04 21:26:38 jeremy Exp $

COMMENT =		LALR(1) parser generator for ruby

DISTNAME =		racc-1.4.14
REVISION =		0
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
