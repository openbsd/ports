# $OpenBSD: Makefile,v 1.11 2015/01/21 14:41:37 sthen Exp $

COMMENT=		Find RFC 822 email addresses in plain text

MODULES=		cpan
DISTNAME=		Email-Find-0.10
REVISION=		0
CATEGORIES=		textproc

RUN_DEPENDS=		mail/p5-Mail-Tools mail/p5-Email-Valid
BUILD_DEPENDS=		${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
