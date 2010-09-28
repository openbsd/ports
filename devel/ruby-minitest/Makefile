# $OpenBSD: Makefile,v 1.4 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-1.4.2
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

MODRUBY_REGRESS = rake

REGRESS_DEPENDS = ::devel/ruby-hoe

.include <bsd.port.mk>
