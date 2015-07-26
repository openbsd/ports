# $OpenBSD: Makefile,v 1.9 2015/07/26 03:50:04 jeremy Exp $

COMMENT =	Ruby interface to GSL

DISTNAME =	gsl-1.16.0.6
CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB += gsl gslcblas

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-narray,${MODRUBY_FLAVOR}
LIB_DEPENDS =	devel/gsl

CONFIGURE_STYLE =ruby gem ext

MODRUBY_TEST =	ruby
MODRUBY_TEST_TARGET =	-I test \
	-e 'ARGV.each{|f| require f}' \
	test/gsl_test.rb test/gsl/*

.include <bsd.port.mk>
