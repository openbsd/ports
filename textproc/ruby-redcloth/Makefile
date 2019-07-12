# $OpenBSD: Makefile,v 1.27 2019/07/12 21:02:27 sthen Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.3.2
PKGNAME =	${DISTNAME:L}
REVISION =	0
CATEGORIES =	textproc

HOMEPAGE =	http://redcloth.org/

# BSD
PERMIT_PACKAGE = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST =	rspec
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
