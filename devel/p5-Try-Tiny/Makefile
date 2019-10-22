# $OpenBSD: Makefile,v 1.16 2019/10/22 16:35:25 afresh1 Exp $

COMMENT =		minimal try/catch with proper preservation of $$@

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Try-Tiny-0.30
CATEGORIES =		devel

# Perl
PERMIT_PACKAGE =	Yes
FIX_EXTRACT_PERMISSIONS =	Yes

CPAN_AUTHOR =		ETHER

# An optional dependency, but useful
RUN_DEPENDS =	devel/p5-Sub-Name

TEST_DEPENDS =		sysutils/p5-Capture-Tiny>=0.12

.include <bsd.port.mk>
