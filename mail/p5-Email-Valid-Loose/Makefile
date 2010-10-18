# $OpenBSD: Makefile,v 1.3 2010/10/18 19:59:17 espie Exp $

COMMENT=	allows non RFC822 addresses common in japan

MODULES=	cpan
DISTNAME=	Email-Valid-Loose-0.05
CATEGORIES=	mail
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::mail/p5-Email-Valid

.include <bsd.port.mk>
