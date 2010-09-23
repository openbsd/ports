# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:27 jeremy Exp $

COMMENT =	recursive descent parser combinator framework

DISTNAME =	rparsec-1.0
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	devel

# BSD
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=rparsec/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} -I${WRKBUILD}/rparsec:${WRKBUILD}/test/src \
	    ${WRKBUILD}/test/src/tests.rb

.include <bsd.port.mk>
