# $OpenBSD: Makefile,v 1.11 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.9.7
REVISION =	2
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

MODRUBY_REGRESS = rake
RAKE_REGRESS_TARGET = test:acceptance test:units

.include <bsd.port.mk>
