# $OpenBSD: Makefile,v 1.12 2013/03/11 11:42:46 espie Exp $

COMMENT =	HTML entity encoding and decoding for Ruby

DISTNAME =	htmlentities-4.0.0
EPOCH =		0
REVISION =	5
CATEGORIES =	textproc www

HOMEPAGE =	http://htmlentities.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} test/test_all.rb

.include <bsd.port.mk>
