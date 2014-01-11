# $OpenBSD: Makefile,v 1.21 2014/01/11 22:51:03 jeremy Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.2.9
PKGNAME =	${DISTNAME:L}
REVISION =	1
CATEGORIES =	textproc

HOMEPAGE =	http://redcloth.org/

# BSD
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST =	rspec
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
