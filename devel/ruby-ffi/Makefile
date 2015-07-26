# $OpenBSD: Makefile,v 1.19 2015/07/26 03:33:31 jeremy Exp $

COMMENT =	cross-platform dynamic library loading for ruby

DISTNAME =	ffi-1.9.10
CATEGORIES =	devel

HOMEPAGE=	https://github.com/ffi/ffi

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# LPGLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	ffi

LIB_DEPENDS =	devel/libffi

CONFIGURE_STYLE = ruby gem ext

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST = rspec3
MODRUBY_TEST_TARGET = spec/ffi/*_spec.rb

.include <bsd.port.mk>
