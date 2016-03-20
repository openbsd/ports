# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:38 naddy Exp $

COMMENT= 	check for pod coverage in your distribution

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Pod-Coverage-1.10
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Pod-Coverage

.include <bsd.port.mk>
