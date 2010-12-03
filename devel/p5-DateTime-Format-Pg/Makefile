# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT=		parse and create PostGresql date objects

MODULES=		cpan
DISTNAME=		DateTime-Format-Pg-0.16003
REVISION =		0
CATEGORIES=		devel converters
USE_GROFF =		Yes

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=		devel/p5-DateTime-Format-Builder
BUILD_DEPENDS=		${RUN_DEPENDS}
MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>	
