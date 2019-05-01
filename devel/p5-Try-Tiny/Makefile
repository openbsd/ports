# $OpenBSD: Makefile,v 1.14 2019/05/01 19:57:07 sthen Exp $

COMMENT =		minimal try/catch with proper preservation of $$@

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Try-Tiny-0.22
CATEGORIES =		devel
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		DOY

TEST_DEPENDS =	devel/p5-Sub-Name>=0 \
		sysutils/p5-Capture-Tiny>=0.12

.include <bsd.port.mk>
