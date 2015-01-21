# $OpenBSD: Makefile,v 1.12 2015/01/21 14:09:59 sthen Exp $

COMMENT=	C/XS reimplementation of Geo::Coordinates::UTM
MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Geo-Coordinates-UTM-XS-0.04
REVISION=	3
CATEGORIES=	geo

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	geo/p5-Geo-Coordinates-UTM>=0.05

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

.include <bsd.port.mk>
