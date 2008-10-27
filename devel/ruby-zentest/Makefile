# $OpenBSD: Makefile,v 1.1.1.1 2008/10/27 20:07:36 pirofti Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-3.11.0
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
