# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:02 naddy Exp $

COMMENT=	hashes with encrypting fields

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Tie-EncryptedHash-1.24
REVISION=	0
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	security/p5-Crypt-CBC

.include <bsd.port.mk>
