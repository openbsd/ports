# $OpenBSD: Makefile,v 1.3 2010/09/28 20:12:18 jeremy Exp $

COMMENT =	generate random strings from most regular expressions

DISTNAME =	randexp-0.1.4
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rcov
MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET =	specs

.include <bsd.port.mk>
