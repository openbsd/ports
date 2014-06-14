# $OpenBSD: Makefile,v 1.11 2014/06/14 23:25:21 sthen Exp $

COMMENT=	C/XS reimplementation of Geo::Coordinates::UTM
MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Geo-Coordinates-UTM-XS-0.04
REVISION=	3
CATEGORIES=	geo
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	geo/p5-Geo-Coordinates-UTM>=0.05

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

.include <bsd.port.mk>
