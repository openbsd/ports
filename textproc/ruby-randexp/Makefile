# $OpenBSD: Makefile,v 1.7 2010/12/08 22:46:36 jeremy Exp $

COMMENT =	generate random strings from most regular expressions

DISTNAME =	randexp-0.1.5
CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-rcov,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET =	specs

.include <bsd.port.mk>
