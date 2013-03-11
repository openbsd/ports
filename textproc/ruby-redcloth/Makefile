# $OpenBSD: Makefile,v 1.19 2013/03/11 11:42:47 espie Exp $

COMMENT =	module for using Textile in Ruby

DISTNAME =	RedCloth-4.2.9
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
