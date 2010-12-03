# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:37 ajacoutot Exp $

COMMENT=	module to calculate geographic location
MODULES=	cpan
DISTNAME=	Geo-Forward-0.11
REVISION=	0
CATEGORIES=	geo
USE_GROFF =	Yes

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	geo/p5-Geo-Constants \
		geo/p5-Geo-Ellipsoids \
		geo/p5-Geo-Functions

.include <bsd.port.mk>
