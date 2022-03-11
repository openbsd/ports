COMMENT =	Ruby commandline parsing library

DISTNAME =	trollop-2.0

CATEGORIES =	devel

# Same as Ruby
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_trollop.rb

.include <bsd.port.mk>
