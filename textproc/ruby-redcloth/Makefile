# $OpenBSD: Makefile,v 1.23 2014/10/11 19:54:47 jeremy Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.2.9
PKGNAME =	${DISTNAME:L}
REVISION =	3
CATEGORIES =	textproc

HOMEPAGE =	http://redcloth.org/

# BSD
PERMIT_PACKAGE_CDROM = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_TEST =	rspec
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
