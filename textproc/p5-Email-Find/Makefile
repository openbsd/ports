# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:02 sthen Exp $

COMMENT=		Find RFC 822 email addresses in plain text

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		Email-Find-0.10
REVISION=		0
CATEGORIES=		textproc

RUN_DEPENDS=		mail/p5-Mail-Tools mail/p5-Email-Valid
BUILD_DEPENDS=		${RUN_DEPENDS}

# Perl
PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
