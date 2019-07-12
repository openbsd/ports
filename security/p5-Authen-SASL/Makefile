# $OpenBSD: Makefile,v 1.16 2019/07/12 20:49:06 sthen Exp $

COMMENT=	perl interface to the SASL auth framework

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Authen-SASL-2.16
CATEGORIES=	security

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Digest-HMAC

.include <bsd.port.mk>
