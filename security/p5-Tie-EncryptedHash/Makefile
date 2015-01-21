# $OpenBSD: Makefile,v 1.9 2015/01/21 14:40:11 sthen Exp $

COMMENT=	hashes with encrypting fields

MODULES=	cpan
DISTNAME=	Tie-EncryptedHash-1.24
REVISION=	0
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
