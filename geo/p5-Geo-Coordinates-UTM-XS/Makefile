# $OpenBSD: Makefile,v 1.9 2012/08/23 15:50:05 sthen Exp $

COMMENT=	C/XS reimplementation of Geo::Coordinates::UTM
MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Geo-Coordinates-UTM-XS-0.04
REVISION=	2
CATEGORIES=	geo
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	geo/p5-Geo-Coordinates-UTM>=0.05

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c

.include <bsd.port.mk>
