# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:30 espie Exp $

COMMENT =	Ruby commandline parsing library

DISTNAME =	trollop-1.16.2
REVISION =	0

CATEGORIES =	devel

# Same as Ruby
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_trollop.rb

.include <bsd.port.mk>
