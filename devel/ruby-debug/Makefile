# $OpenBSD: Makefile,v 1.15 2011/11/09 00:17:38 jeremy Exp $

COMMENT =	faster implementation of the standard debug.rb

VERSION =	0.10.3
DISTNAME =      ruby-${PKGNAME}
PKGNAME =       debug-${VERSION}
REVISION =	4
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-debug-base,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-columnize,${MODRUBY_FLAVOR}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
