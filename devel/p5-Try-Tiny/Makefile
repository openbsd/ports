# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:41 naddy Exp $

COMMENT =		minimal try/catch with proper preservation of $$@

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Try-Tiny-0.22
CATEGORIES =		devel

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		DOY

TEST_DEPENDS =	devel/p5-Sub-Name>=0 \
		sysutils/p5-Capture-Tiny>=0.12

.include <bsd.port.mk>
