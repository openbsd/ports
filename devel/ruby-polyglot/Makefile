# $OpenBSD: Makefile,v 1.12 2013/10/26 23:55:36 jeremy Exp $

COMMENT =	provides a registry of file types

DISTNAME =	polyglot-0.3.1
REVISION =	3
CATEGORIES =	devel

HOMEPAGE =	http://polyglot.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} test/test_polyglot.rb

.include <bsd.port.mk>
