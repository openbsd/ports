# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:05:12 jeremy Exp $

COMMENT =	embed C code in your ruby script

DISTNAME =	ffi-inliner-0.2.4
CATEGORIES =	devel

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

REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS =	rspec
RSPEC_REGRESS_TARGET=	spec/ffi-inliner/inliner_spec.rb

.include <bsd.port.mk>
