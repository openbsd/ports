# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:19 sthen Exp $

COMMENT =		minimal try/catch with proper preservation of $$@

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Try-Tiny-0.30
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes
FIX_EXTRACT_PERMISSIONS =	Yes

CPAN_AUTHOR =		ETHER

# An optional dependency, but useful
RUN_DEPENDS =	devel/p5-Sub-Name

TEST_DEPENDS =		sysutils/p5-Capture-Tiny>=0.12

.include <bsd.port.mk>
