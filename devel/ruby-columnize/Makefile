# $OpenBSD: Makefile,v 1.9 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	sorts an array in column order

DISTNAME =	columnize-0.3.1
REVISION =	3
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test-columnize.rb

.include <bsd.port.mk>
