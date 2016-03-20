# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:07 naddy Exp $

COMMENT=	read/write access to ASN.1-encoded PEM files

DISTNAME=	Convert-PEM-0.08
CATEGORIES=	converters security
MODULES=	cpan
PKG_ARCH=	*

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-ASN1 \
		devel/p5-Class-ErrorHandler \
		security/p5-Crypt-DES-EDE3

.include <bsd.port.mk>
