# $OpenBSD: Makefile,v 1.3 2011/01/02 13:20:53 jasper Exp $

COMMENT =	cross-platform dynamic library loading for ruby

DISTNAME =	ffi-0.6.3
REVISION =	1
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

post-install:
	rm -r ${GEM_ABS_PATH}/gems/${DISTNAME}/ext

# Regress currently broken, libtest directory needed and not
# included in the gem
REGRESS_DEPENDS = devel/ruby-rake-compiler,${MODRUBY_FLAVOR}
MODRUBY_REGRESS = rake rspec
RAKE_REGRESS_TARGET = specs

.include <bsd.port.mk>
