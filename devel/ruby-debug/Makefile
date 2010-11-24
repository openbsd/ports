# $OpenBSD: Makefile,v 1.12 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	faster implementation of the standard debug.rb

VERSION =	0.10.3
DISTNAME =      ruby-${PKGNAME}
PKGNAME =       debug-${VERSION}
REVISION =	2
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	STEM-${VERSION}:devel/ruby-debug-base,${MODRUBY_FLAVOR} \
		devel/ruby-columnize,${MODRUBY_FLAVOR}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
