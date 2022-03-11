COMMENT=	read/write access to ASN.1-encoded PEM files

DISTNAME=	Convert-PEM-0.08
CATEGORIES=	converters security
MODULES=	cpan
PKG_ARCH=	*
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-ASN1 \
		devel/p5-Class-ErrorHandler \
		security/p5-Crypt-DES-EDE3

.include <bsd.port.mk>
