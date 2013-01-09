# $OpenBSD: Makefile,v 1.11 2013/01/09 17:38:52 jeremy Exp $

COMMENT =	cross-platform dynamic library loading for ruby

DISTNAME =	ffi-1.0.9
CATEGORIES =	devel
REVISION =	3

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

post-install:
	rm -r ${GEM_ABS_PATH}/gems/${DISTNAME}/ext

# Doesn't ship with libtest directory, which is necessary for regress
#REGRESS_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
#MODRUBY_REGRESS = rspec2
#MODRUBY_REGRESS_ENV = RUBYLIB=$$(dirname `${GEM} which ffi.rb`) \
#			RUBYOPT=-rffi
#MODRUBY_REGRESS_TARGET = spec/ffi/*_spec.rb

.include <bsd.port.mk>
