# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:59 sthen Exp $

COMMENT =		build and install Perl modules

DISTNAME =		Module-Build-0.4224
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

TEST_DEPENDS +=		devel/p5-PAR-Dist
CONFIGURE_STYLE =	modbuild none

.include <bsd.port.mk>
