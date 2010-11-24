# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:15 jeremy Exp $

COMMENT =	HTML entity encoding and decoding for Ruby

DISTNAME =	htmlentities-4.0.0
REVISION =	2
CATEGORIES =	textproc www

HOMEPAGE =	http://htmlentities.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test_all.rb

.include <bsd.port.mk>
