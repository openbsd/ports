# $OpenBSD: Makefile,v 1.3 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	Ruby commandline parsing library

DISTNAME =	trollop-1.15
PKGNAME =	ruby-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

# Same as Ruby
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

REGRESS_DEPENDS = ::${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_trollop.rb

.include <bsd.port.mk>
