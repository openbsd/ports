# $OpenBSD: Makefile,v 1.4 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	provides a registry of file types

DISTNAME =	polyglot-0.2.8
PKGNAME =	ruby-${DISTNAME}
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

PKG_ARCH =		*

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/test_polyglot.rb

.include <bsd.port.mk>
