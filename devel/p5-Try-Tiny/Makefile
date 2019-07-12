# $OpenBSD: Makefile,v 1.15 2019/07/12 20:45:13 sthen Exp $

COMMENT =		minimal try/catch with proper preservation of $$@

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Try-Tiny-0.22
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE =	Yes

CPAN_AUTHOR =		DOY

TEST_DEPENDS =	devel/p5-Sub-Name>=0 \
		sysutils/p5-Capture-Tiny>=0.12

.include <bsd.port.mk>
