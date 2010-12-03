# $OpenBSD: Makefile,v 1.8 2010/12/03 11:45:37 ajacoutot Exp $

COMMENT=	C/XS reimplementation of Geo::Coordinates::UTM
MODULES=	cpan
SHARED_ONLY=	Yes
DISTNAME=	Geo-Coordinates-UTM-XS-0.04
REVISION=	1
CATEGORIES=	geo
USE_GROFF =	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	geo/p5-Geo-Coordinates-UTM>=0.05

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

.include <bsd.port.mk>
