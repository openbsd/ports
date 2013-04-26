# $OpenBSD: Makefile,v 1.17 2013/04/26 12:18:20 jasper Exp $

COMMENT =	Ruby library for mocking and stubbing

DISTNAME =	mocha-0.13.3
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
