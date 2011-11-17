# $OpenBSD: Makefile,v 1.14 2011/11/17 15:41:11 jeremy Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.9.12
CATEGORIES =	devel

HOMEPAGE =	http://mocha.rubyforge.org/

# MIT License
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE = ruby gem

# 7 failures on ruby 1.8, passes on ruby 1.9
MODRUBY_REGRESS = rake
MODRUBY_REGRESS_TARGET = test:acceptance test:units

.include <bsd.port.mk>
