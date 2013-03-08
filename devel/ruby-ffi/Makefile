# $OpenBSD: Makefile,v 1.12 2013/03/08 10:41:26 jasper Exp $

COMMENT =	cross-platform dynamic library loading for ruby

DISTNAME =	ffi-1.2.0
CATEGORIES =	devel

HOMEPAGE=	http://github.com/ffi/ffi

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LPGLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

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

# Doesn't ship with libtest directory, which is necessary for regress
#REGRESS_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
#MODRUBY_REGRESS = rspec2
#MODRUBY_REGRESS_ENV = RUBYLIB=$$(dirname `${GEM} which ffi.rb`) \
#			RUBYOPT=-rffi
#MODRUBY_REGRESS_TARGET = spec/ffi/*_spec.rb

.include <bsd.port.mk>
