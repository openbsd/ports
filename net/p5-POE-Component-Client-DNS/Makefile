# $OpenBSD: Makefile,v 1.15 2017/12/08 12:31:48 espie Exp $

COMMENT=	DNS module for the Perl Object Environment

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	POE-Component-Client-DNS-1.051
CATEGORIES=	net
FIX_EXTRACT_PERMISSIONS=Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-DNS
BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_DEPENDS=devel/p5-Test-NoWarnings

.include <bsd.port.mk>
