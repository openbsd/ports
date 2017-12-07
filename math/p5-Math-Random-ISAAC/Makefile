# $OpenBSD: Makefile,v 1.4 2017/12/07 18:54:36 espie Exp $

COMMENT=	interface to the ISAAC PRNG algorithm

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Math-Random-ISAAC-1.004
CATEGORIES=	math
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER=	David Hill <dhill@mindcry.org>

# CC0 License
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=	devel/p5-Test-LeakTrace \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
