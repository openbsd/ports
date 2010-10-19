# $OpenBSD: Makefile,v 1.7 2010/10/19 07:54:22 espie Exp $

COMMENT=		Find RFC 822 email addresses in plain text

MODULES=		cpan
DISTNAME=		Email-Find-0.10
CATEGORIES=		textproc
USE_GROFF =	Yes

RUN_DEPENDS=		::mail/p5-Mail-Tools ::mail/p5-Email-Valid
BUILD_DEPENDS=		${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
