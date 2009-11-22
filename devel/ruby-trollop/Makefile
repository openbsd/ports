# $OpenBSD: Makefile,v 1.1.1.1 2009/11/22 04:21:33 msf Exp $

COMMENT =	Ruby commandline parsing library

DISTNAME =	trollop-1.15
PKGNAME =	ruby-${DISTNAME}

CATEGORIES =	devel

# Same as Ruby
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=trollop/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

REGRESS_DEPENDS = ::${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -rubygems test/test_trollop.rb

.include <bsd.port.mk>
