# $OpenBSD: Makefile,v 1.3 2010/01/10 13:45:04 espie Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan

DISTNAME=	Rose-DateTime-0.533
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-DateTime

REGRESS_DEPENDS=	::databases/p5-Rose-Object

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
