# $OpenBSD: Makefile,v 1.12 2010/11/19 07:23:08 espie Exp $

COMMENT=	check validity of Internet email addresses

MODULES=	cpan
DISTNAME=	Email-Valid-0.184
CATEGORIES=	mail
USE_GROFF =	Yes

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	mail/p5-Mail-Tools>=1.67
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=	net/p5-Net-Domain-TLD

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
