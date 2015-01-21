# $OpenBSD: Makefile,v 1.11 2015/01/21 14:40:11 sthen Exp $

COMMENT=	RSA public-key cryptosystem

MODULES=	cpan
DISTNAME=	Crypt-RSA-1.99
REVISION=	0
CATEGORIES=	security

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-ASCII-Armour \
		devel/p5-Data-Buffer \
		security/p5-Crypt-CBC \
		security/p5-Crypt-Primes \
		security/p5-Digest-MD2 \
		security/p5-Digest-SHA1 \
		security/p5-Tie-EncryptedHash \
		textproc/p5-Sort-Versions

.include <bsd.port.mk>
