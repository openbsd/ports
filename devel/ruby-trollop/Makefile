# $OpenBSD: Makefile,v 1.12 2013/10/26 23:55:36 jeremy Exp $

COMMENT =	Ruby commandline parsing library

DISTNAME =	trollop-1.16.2
REVISION =	1

CATEGORIES =	devel

# Same as Ruby
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_trollop.rb

.include <bsd.port.mk>
