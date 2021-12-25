# $OpenBSD: Makefile,v 1.11 2021/12/25 17:40:17 afresh1 Exp $

COMMENT =	test for warnings and the lack of them

DISTNAME =	Test-Warnings-0.031
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*
FIX_EXTRACT_PERMISSIONS =	Yes

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-CPAN-Meta-Check>=0.011 \
		devel/p5-PadWalker

.include <bsd.port.mk>
