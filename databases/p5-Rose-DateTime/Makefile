# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:25 ajacoutot Exp $

COMMENT=	datetime helper functions for Rose

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Rose-DateTime-0.533
REVISION=	0
CATEGORIES=	databases devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-DateTime

REGRESS_DEPENDS=	databases/p5-Rose-Object

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
