# $OpenBSD: Makefile,v 1.7 2019/07/12 20:45:12 sthen Exp $

COMMENT =	test for warnings and the lack of them

DISTNAME =	Test-Warnings-0.026
CATEGORIES =	devel
MODULES =	cpan
PKG_ARCH =	*

MAINTAINER =	Andrew Fresh <afresh1@openbsd.org>

# perl_5
PERMIT_PACKAGE =	Yes

TEST_DEPENDS =	devel/p5-CPAN-Meta-Check>=0.011 \
		devel/p5-PadWalker

FIX_EXTRACT_PERMISSIONS =	Yes

.include <bsd.port.mk>
