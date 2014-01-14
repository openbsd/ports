# $OpenBSD: Makefile,v 1.13 2014/01/14 20:20:05 jasper Exp $

COMMENT =	Ruby commandline parsing library

DISTNAME =	trollop-2.0

CATEGORIES =	devel

# Same as Ruby
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_trollop.rb

.include <bsd.port.mk>
