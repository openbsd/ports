# $OpenBSD: Makefile,v 1.10 2020/07/03 21:45:21 sthen Exp $

COMMENT=	module to calculate geographic location
MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Geo-Forward-0.14
CATEGORIES=	geo
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Package-New \
		geo/p5-Geo-Constants \
		geo/p5-Geo-Ellipsoids \
		geo/p5-Geo-Functions

.include <bsd.port.mk>
