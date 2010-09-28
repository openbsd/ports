# $OpenBSD: Makefile,v 1.5 2010/09/28 20:12:17 jeremy Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-4.1.4
PKGNAME =	ruby-${DISTNAME:L}
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

REGRESS_DEPENDS = ::devel/ruby-hoe \
		::devel/ruby-minitest

GEM_SKIPDEPENDS =	hoe

PKG_ARCH =	*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
