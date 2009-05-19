# $OpenBSD: Makefile,v 1.1.1.1 2009/05/19 20:59:40 pirofti Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-1.3.1
PKGNAME =	ruby-${DISTNAME}
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

REGRESS_DEPENDS = ::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
