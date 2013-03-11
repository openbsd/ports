# $OpenBSD: Makefile,v 1.5 2013/03/11 11:07:42 espie Exp $

COMMENT=	module to calculate geographic location
MODULES=	cpan
DISTNAME=	Geo-Forward-0.11
REVISION=	0
CATEGORIES=	geo
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	geo/p5-Geo-Constants \
		geo/p5-Geo-Ellipsoids \
		geo/p5-Geo-Functions

.include <bsd.port.mk>
