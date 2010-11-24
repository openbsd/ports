# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	Ruby commandline parsing library

DISTNAME =	trollop-1.15
REVISION =	2

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
