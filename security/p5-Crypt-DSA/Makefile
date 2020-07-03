# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:40 sthen Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Crypt-DSA-1.17
CATEGORIES=	security
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-PEM \
		devel/p5-Data-Buffer \
		sysutils/p5-File-Which \
		security/p5-Digest-SHA1

.include <bsd.port.mk>
