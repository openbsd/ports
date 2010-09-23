# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:27 jeremy Exp $

COMMENT =	small, simple testing API for Rack apps

DISTNAME =	rack-test-0.3.0
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	devel www

HOMEPAGE =	http://github.com/brynary/rack-test

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=rack-test/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

.include <bsd.port.mk>
