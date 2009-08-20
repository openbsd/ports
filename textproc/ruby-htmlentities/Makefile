# $OpenBSD: Makefile,v 1.2 2009/08/20 23:14:15 bernd Exp $

COMMENT =	HTML entity encoding and decoding for Ruby

DISTNAME =	htmlentities-4.1.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	textproc www

HOMEPAGE =	http://htmlentities.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=htmlentities/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test_all.rb

.include <bsd.port.mk>
