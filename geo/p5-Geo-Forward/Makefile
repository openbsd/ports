# $OpenBSD: Makefile,v 1.2 2010/10/18 18:13:12 espie Exp $

COMMENT=	module to calculate geographic location
MODULES=	cpan
DISTNAME=	Geo-Forward-0.11
CATEGORIES=	geo
USE_GROFF =	Yes

# Perl
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

RUN_DEPENDS=	::geo/p5-Geo-Constants \
		::geo/p5-Geo-Ellipsoids \
		::geo/p5-Geo-Functions

.include <bsd.port.mk>
