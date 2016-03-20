# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:59 naddy Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
PKG_ARCH=	*
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
