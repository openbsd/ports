# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:43 espie Exp $

COMMENT=		Find RFC 822 email addresses in plain text

MODULES=		cpan
DISTNAME=		Email-Find-0.10
REVISION=		0
CATEGORIES=		textproc
USE_GROFF =		Yes

RUN_DEPENDS=		mail/p5-Mail-Tools mail/p5-Email-Valid
BUILD_DEPENDS=		${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
