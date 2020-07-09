# $OpenBSD: Makefile,v 1.10 2020/07/09 00:31:14 afresh1 Exp $

COMMENT =	test for warnings and the lack of them

DISTNAME =	Test-Warnings-0.030
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*
FIX_EXTRACT_PERMISSIONS =	Yes

MAINTAINER =	Andrew Hewus Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-CPAN-Meta-Check>=0.011 \
		devel/p5-PadWalker

.include <bsd.port.mk>
