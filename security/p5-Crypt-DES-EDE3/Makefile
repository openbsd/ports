# $OpenBSD: Makefile,v 1.9 2013/10/11 23:50:46 naddy Exp $

COMMENT=	Triple-DES EDE encryption/decryption

MODULES=	cpan
DISTNAME=	Crypt-DES_EDE3-0.01
PKGNAME=	p5-${DISTNAME:S/_/-/}
REVISION=	1
CATEGORIES=	security

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-DES

.include <bsd.port.mk>
