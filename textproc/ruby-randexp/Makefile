# $OpenBSD: Makefile,v 1.4 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	generate random strings from most regular expressions

DISTNAME =	randexp-0.1.4
REVISION =      1
CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-rcov-*:devel/ruby-rcov,${FLAVOR}
MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET =	specs

.include <bsd.port.mk>
