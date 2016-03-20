# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:43 naddy Exp $

COMMENT=	module to calculate geographic location
MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Geo-Forward-0.14
CATEGORIES=	geo

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Package-New \
		geo/p5-Geo-Constants \
		geo/p5-Geo-Ellipsoids \
		geo/p5-Geo-Functions

.include <bsd.port.mk>
