# $OpenBSD: Makefile,v 1.15 2016/03/20 19:56:58 naddy Exp $

COMMENT=	perl interface to the SASL auth framework

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Authen-SASL-2.16
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Digest-HMAC

.include <bsd.port.mk>
