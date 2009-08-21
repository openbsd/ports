# $OpenBSD: Makefile,v 1.3 2009/08/21 08:46:23 bernd Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-4.1.4
PKGNAME =	ruby-${DISTNAME:L}
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=zentest/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

REGRESS_DEPENDS = ::devel/ruby-rake \
		::devel/ruby-hoe \
		::devel/ruby-minitest

GEM_SKIPDEPENDS =	hoe

PKG_ARCH =	*

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
