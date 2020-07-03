# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:40 sthen Exp $

COMMENT=	Triple-DES EDE encryption/decryption

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Crypt-DES_EDE3-0.01
PKGNAME=	p5-${DISTNAME:S/_/-/}
REVISION=	2
CATEGORIES=	security

# Artistic
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-DES

.include <bsd.port.mk>
