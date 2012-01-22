# $OpenBSD: Makefile,v 1.9 2012/01/22 16:36:25 jeremy Exp $

COMMENT =	Ruby commandline parsing library

DISTNAME =	trollop-1.16.2

CATEGORIES =	devel

# Same as Ruby
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

REGRESS_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_trollop.rb

.include <bsd.port.mk>
