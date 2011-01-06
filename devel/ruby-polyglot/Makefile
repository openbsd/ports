# $OpenBSD: Makefile,v 1.8 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	provides a registry of file types

DISTNAME =	polyglot-0.3.1
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://polyglot.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test_polyglot.rb

.include <bsd.port.mk>
