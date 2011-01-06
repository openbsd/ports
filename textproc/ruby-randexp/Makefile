# $OpenBSD: Makefile,v 1.9 2011/01/06 04:24:24 jeremy Exp $

COMMENT =	generate random strings from most regular expressions

DISTNAME =	randexp-0.1.5
REVISION =	1
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

RUN_DEPENDS =		devel/ruby-parsetree
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
