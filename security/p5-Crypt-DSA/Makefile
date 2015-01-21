# $OpenBSD: Makefile,v 1.13 2015/01/21 14:40:11 sthen Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
DISTNAME=	Crypt-DSA-1.17
CATEGORIES=	security

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-PEM \
		devel/p5-Data-Buffer \
		sysutils/p5-File-Which \
		security/p5-Digest-SHA1

.include <bsd.port.mk>
