# $OpenBSD: Makefile,v 1.2 2009/02/03 12:21:04 pirofti Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-3.11.1
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
		::devel/ruby-hoe

GEM_SKIPDEPENDS =	hoe

PKG_ARCH =	*

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
