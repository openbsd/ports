# $OpenBSD: Makefile,v 1.15 2019/07/12 20:49:07 sthen Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Crypt-DSA-1.17
CATEGORIES=	security

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-PEM \
		devel/p5-Data-Buffer \
		sysutils/p5-File-Which \
		security/p5-Digest-SHA1

.include <bsd.port.mk>
