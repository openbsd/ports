# $OpenBSD: Makefile,v 1.15 2019/07/12 20:46:30 sthen Exp $

COMMENT=	C/XS reimplementation of Geo::Coordinates::UTM
MODULES=	cpan
DISTNAME=	Geo-Coordinates-UTM-XS-0.04
REVISION=	4
CATEGORIES=	geo

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	geo/p5-Geo-Coordinates-UTM>=0.05

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

.include <bsd.port.mk>
