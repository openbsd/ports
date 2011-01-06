# $OpenBSD: Makefile,v 1.11 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	generic active transaction support for ruby objects

DISTNAME =	transaction-simple-1.4.0
REVISION =	5
CATEGORIES =	devel

# mit
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test_all.rb

.include <bsd.port.mk>
