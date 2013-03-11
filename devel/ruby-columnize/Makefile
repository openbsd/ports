# $OpenBSD: Makefile,v 1.13 2013/03/11 10:50:29 espie Exp $

COMMENT =	sorts an array in column order

DISTNAME =	columnize-0.3.1
REVISION =	6
CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

do-test:
	@cd ${WRKBUILD} && ${RUBY} test/test-columnize.rb

.include <bsd.port.mk>
