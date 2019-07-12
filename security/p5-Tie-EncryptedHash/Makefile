# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:08 sthen Exp $

COMMENT=	hashes with encrypting fields

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Tie-EncryptedHash-1.24
REVISION=	0
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
