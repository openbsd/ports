# $OpenBSD: Makefile,v 1.11 2017/11/04 15:47:52 jeremy Exp $

COMMENT =	Ruby interface to GSL

DISTNAME =	gsl-2.1.0.3
CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB += gsl gslcblas

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-narray,${MODRUBY_FLAVOR}
LIB_DEPENDS =	devel/gsl

CONFIGURE_STYLE =ruby gem ext

TEST_DEPENDS = ${BUILD_PKGPATH}
MODRUBY_TEST =	ruby
MODRUBY_TEST_TARGET =	-I lib -I test \
	-e 'ARGV.each{|f| require f}' \
	`find ./test -name '*_test.rb'`

.include <bsd.port.mk>
