# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:43 sthen Exp $

COMMENT=	hashes with encrypting fields

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Tie-EncryptedHash-1.24
REVISION=	1
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
