# $OpenBSD: Makefile,v 1.17 2012/09/23 17:00:49 jeremy Exp $

COMMENT =	faster implementation of the standard debug.rb

VERSION =	0.10.3
DISTNAME =      ruby-${PKGNAME}
PKGNAME =       debug-${VERSION}
REVISION =	6
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-debug-base,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-columnize,${MODRUBY_FLAVOR}

MODULES =	lang/ruby

FLAVORS =	ruby18
FLAVOR =	ruby18

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
