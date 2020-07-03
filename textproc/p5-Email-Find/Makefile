# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:45 sthen Exp $

COMMENT=		Find RFC 822 email addresses in plain text

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Email-Find-0.10
REVISION=		1
CATEGORIES=		textproc

RUN_DEPENDS=		mail/p5-Mail-Tools mail/p5-Email-Valid
BUILD_DEPENDS=		${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
