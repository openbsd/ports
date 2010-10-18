# $OpenBSD: Makefile,v 1.4 2010/10/18 17:06:08 espie Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan
USE_GROFF =	Yes

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
