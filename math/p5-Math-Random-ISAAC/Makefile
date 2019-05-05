# $OpenBSD: Makefile,v 1.5 2019/05/05 15:15:46 danj Exp $

COMMENT=	interface to the ISAAC PRNG algorithm

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Math-Random-ISAAC-1.004
CATEGORIES=	math
FIX_EXTRACT_PERMISSIONS=Yes
REVISION=	0

# CC0 License
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Test-LeakTrace \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
