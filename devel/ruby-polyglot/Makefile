# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:30 espie Exp $

COMMENT =	provides a registry of file types

DISTNAME =	polyglot-0.3.1
REVISION =	2
CATEGORIES =	devel

HOMEPAGE =	http://polyglot.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} test/test_polyglot.rb

.include <bsd.port.mk>
