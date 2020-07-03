# $OpenBSD: Makefile,v 1.19 2020/07/03 21:45:00 sthen Exp $

COMMENT =		build and install Perl modules

DISTNAME =		Module-Build-0.4224
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

TEST_DEPENDS +=		devel/p5-PAR-Dist
CONFIGURE_STYLE =	modbuild none

.include <bsd.port.mk>
