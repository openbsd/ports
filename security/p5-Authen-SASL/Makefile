# $OpenBSD: Makefile,v 1.17 2020/07/03 21:45:39 sthen Exp $

COMMENT=	perl interface to the SASL auth framework

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Authen-SASL-2.16
CATEGORIES=	security
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Digest-HMAC

.include <bsd.port.mk>
