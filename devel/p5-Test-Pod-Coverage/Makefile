# $OpenBSD: Makefile,v 1.16 2019/07/12 20:45:11 sthen Exp $

COMMENT= 	check for pod coverage in your distribution

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Pod-Coverage-1.10
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Pod-Coverage

.include <bsd.port.mk>
