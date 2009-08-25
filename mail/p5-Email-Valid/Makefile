# $OpenBSD: Makefile,v 1.9 2009/08/25 17:17:07 jasper Exp $

COMMENT=	check validity of Internet email addresses

MODULES=	cpan
DISTNAME=	Email-Valid-0.182
CATEGORIES=	mail

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:p5-Mail-Tools->=1.67:mail/p5-Mail-Tools
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=	::net/p5-Net-Domain-TLD

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
