# $OpenBSD: Makefile,v 1.25 2016/11/04 21:45:45 jeremy Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.3.2
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
