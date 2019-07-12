# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:30 sthen Exp $

COMMENT=	module to calculate geographic location
MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Geo-Forward-0.14
CATEGORIES=	geo

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Package-New \
		geo/p5-Geo-Constants \
		geo/p5-Geo-Ellipsoids \
		geo/p5-Geo-Functions

.include <bsd.port.mk>
