# $OpenBSD: Makefile,v 1.6 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	generate random strings from most regular expressions

DISTNAME =	randexp-0.1.4
REVISION =	2
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
