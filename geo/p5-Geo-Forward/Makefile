# $OpenBSD: Makefile,v 1.7 2015/07/16 05:12:46 ajacoutot Exp $

COMMENT=	module to calculate geographic location
MODULES=	cpan
DISTNAME=	Geo-Forward-0.14
CATEGORIES=	geo

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Package-New \
		geo/p5-Geo-Constants \
		geo/p5-Geo-Ellipsoids \
		geo/p5-Geo-Functions

.include <bsd.port.mk>
