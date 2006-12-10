# $OpenBSD: Makefile,v 1.1.1.1 2006/12/10 11:07:14 espie Exp $

COMMENT=		"parse and create PostGresql date objects"

MODULES=		cpan
DISTNAME=		DateTime-Format-Pg-0.13
CATEGORIES=		devel converters

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		::devel/p5-DateTime-Format-Builder
MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>	
