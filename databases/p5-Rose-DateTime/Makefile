# $OpenBSD: Makefile,v 1.1.1.1 2006/12/10 18:00:20 espie Exp $

COMMENT=	"datetime helper functions for Rose"

MODULES=	cpan

DISTNAME=	Rose-DateTime-0.532
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
