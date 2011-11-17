# $OpenBSD: Makefile,v 1.3 2011/11/17 16:08:00 jeremy Exp $

COMMENT =	embed C code in your ruby script

DISTNAME =	ffi-inliner-0.2.4
CATEGORIES =	devel
REVISION =	0

HOMEPAGE =	http://github.com/remogatto/ffi-inliner

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-ffi,${MODRUBY_FLAVOR}

# 1 failure because we don't support the optional tcc dependency
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS =	rspec
MODRUBY_REGRESS_ENV =	LD_PRELOAD=/usr/lib/libpthread.so
MODRUBY_REGRESS_TARGET=	spec/ffi-inliner/inliner_spec.rb

.include <bsd.port.mk>
