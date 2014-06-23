# $OpenBSD: Makefile,v 1.14 2014/06/23 13:40:15 sthen Exp $

COMMENT=	perl interface to the SASL auth framework

MODULES=	cpan
DISTNAME=	Authen-SASL-2.16
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Digest-HMAC

.include <bsd.port.mk>
