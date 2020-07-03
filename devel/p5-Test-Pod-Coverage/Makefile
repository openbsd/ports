# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:15 sthen Exp $

COMMENT= 	check for pod coverage in your distribution

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Pod-Coverage-1.10
CATEGORIES=	devel
REVISION =	0

# Artistic
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Pod-Coverage

.include <bsd.port.mk>
