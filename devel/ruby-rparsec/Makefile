# $OpenBSD: Makefile,v 1.1.1.1 2008/10/27 19:38:12 pirofti Exp $

COMMENT =	recursive descent parser combinator framework

DISTNAME =	rparsec-1.0
PKGNAME =	ruby-${DISTNAME}
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
