# $OpenBSD: Makefile,v 1.18 2013/10/26 23:55:35 jeremy Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.13.3
REVISION =	0
CATEGORIES =	devel

HOMEPAGE =	http://mocha.rubyforge.org/

# MIT License
PERMIT_PACKAGE_CDROM =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS} \
		devel/ruby-metaclass,${MODRUBY_FLAVOR}

CONFIGURE_STYLE = ruby gem

# 7 failures on ruby 1.8, passes on ruby 1.9
MODRUBY_TEST = rake
MODRUBY_TEST_TARGET = test:acceptance test:units

.include <bsd.port.mk>
