# $OpenBSD: Makefile,v 1.7 2011/09/16 09:24:58 espie Exp $

COMMENT =	recursive descent parser combinator framework

DISTNAME =	rparsec-1.0
REVISION =	4
CATEGORIES =	devel

# BSD
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -I${WRKBUILD}/rparsec:${WRKBUILD}/test/src \
	    ${WRKBUILD}/test/src/tests.rb

.include <bsd.port.mk>
