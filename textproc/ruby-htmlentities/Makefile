# $OpenBSD: Makefile,v 1.4 2010/09/23 22:30:29 jeremy Exp $

COMMENT =	HTML entity encoding and decoding for Ruby

# www/ruby-typo needs 4.0.0. Check it before you update!
DISTNAME =	htmlentities-4.0.0
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
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
