# $OpenBSD: Makefile,v 1.5 2010/09/24 15:29:22 sthen Exp $

COMMENT=	C/XS reimplementation of Geo::Coordinates::UTM
MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Geo-Coordinates-UTM-XS-0.04
REVISION=	0
CATEGORIES=	geo

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Geo-Coordinates-UTM->=0.05:geo/p5-Geo-Coordinates-UTM

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.include <bsd.port.mk>
