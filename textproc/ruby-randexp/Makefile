# $OpenBSD: Makefile,v 1.11 2011/11/17 15:51:51 jeremy Exp $

COMMENT =	generate random strings from most regular expressions

DISTNAME =	randexp-0.1.6
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
MODRUBY_REGRESS_TARGET = specs

RUN_DEPENDS =		devel/ruby-parsetree
BUILD_DEPENDS = 	${RUN_DEPENDS}

.include <bsd.port.mk>
