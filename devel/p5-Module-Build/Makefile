# $OpenBSD: Makefile,v 1.17 2018/04/28 14:06:38 ajacoutot Exp $

COMMENT =		build and install Perl modules

DISTNAME =		Module-Build-0.4224
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*

TEST_DEPENDS +=		devel/p5-PAR-Dist
CONFIGURE_STYLE =	modbuild none

.include <bsd.port.mk>
