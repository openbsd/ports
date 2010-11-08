# $OpenBSD: Makefile,v 1.10 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	faster implementation of the standard debug.rb

VERSION =	0.10.3
DISTNAME =      ruby-${PKGNAME}
PKGNAME =       debug-${VERSION}
REVISION =      1
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-debug-base-${VERSION}:devel/ruby-debug-base,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-columnize-*:devel/ruby-columnize,${FLAVOR}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
