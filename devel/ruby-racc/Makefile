# $OpenBSD: Makefile,v 1.4 2017/01/06 15:56:31 jeremy Exp $

COMMENT =		LALR(1) parser generator for ruby

DISTNAME =		racc-1.4.14
REVISION =		1
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
