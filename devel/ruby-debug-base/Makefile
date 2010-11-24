# $OpenBSD: Makefile,v 1.13 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	faster implementation of the standard debug.rb - base

DISTNAME =	ruby-${PKGNAME}
PKGNAME =	debug-base-0.10.3
REVISION =	2
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-linecache,${MODRUBY_FLAVOR}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
