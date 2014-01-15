# $OpenBSD: Makefile,v 1.17 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	cross-platform dynamic library loading for ruby

DISTNAME =	ffi-1.2.0
REVISION =	3
CATEGORIES =	devel

HOMEPAGE=	https://github.com/ffi/ffi

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LPGLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS = ${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_RAKE_DEPENDS}

WANTLIB =	ffi

LIB_DEPENDS =	devel/libffi

CONFIGURE_STYLE = ruby gem ext

post-extract:
	rm ${WRKSRC}/ext/ffi_c/LongDouble.c.orig

post-install:
	rm -r ${GEM_ABS_PATH}/gems/${DISTNAME}/ext

# Doesn't ship with libtest directory, which is necessary for test
#TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
#MODRUBY_TEST = rspec2
#MODRUBY_TEST_ENV = RUBYLIB=$$(dirname `${GEM} which ffi.rb`) \
#			RUBYOPT=-rffi
#MODRUBY_TEST_TARGET = spec/ffi/*_spec.rb

.include <bsd.port.mk>
