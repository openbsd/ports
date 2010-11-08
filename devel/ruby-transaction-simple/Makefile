# $OpenBSD: Makefile,v 1.8 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	generic active transaction support for ruby objects

DISTNAME =	transaction-simple-1.4.0
REVISION =	3
CATEGORIES =	devel

# mit
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	:${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR}

CONFIGURE_STYLE = ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test_all.rb

.include <bsd.port.mk>
