# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:30 espie Exp $

COMMENT =	generic active transaction support for ruby objects

DISTNAME =	transaction-simple-1.4.0
REVISION =	7
CATEGORIES =	devel

# mit
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} test/test_all.rb

.include <bsd.port.mk>
