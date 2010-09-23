# $OpenBSD: Makefile,v 1.3 2010/09/23 22:30:26 jeremy Exp $

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

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=bfts/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

PKG_ARCH =	*

MODRUBY_REGRESS = rake

REGRESS_DEPENDS = ::devel/ruby-hoe

.include <bsd.port.mk>
