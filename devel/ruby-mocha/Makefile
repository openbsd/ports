# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:30 espie Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.9.12
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://mocha.rubyforge.org/

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS}

CONFIGURE_STYLE = ruby gem

# 7 failures on ruby 1.8, passes on ruby 1.9
MODRUBY_TEST = rake
MODRUBY_TEST_TARGET = test:acceptance test:units

.include <bsd.port.mk>
