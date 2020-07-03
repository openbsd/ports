# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:29 sthen Exp $

COMMENT=	interface to the ISAAC PRNG algorithm

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Math-Random-ISAAC-1.004
CATEGORIES=	math
FIX_EXTRACT_PERMISSIONS=Yes
REVISION=	1

# CC0 License
PERMIT_PACKAGE=	Yes

TEST_DEPENDS=	devel/p5-Test-LeakTrace \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
