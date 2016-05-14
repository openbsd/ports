# $OpenBSD: Makefile,v 1.24 2016/05/14 13:48:23 jasper Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.3.0
PKGNAME =	${DISTNAME:L}
CATEGORIES =	textproc

HOMEPAGE =	http://redcloth.org/

# BSD
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST =	rspec
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
