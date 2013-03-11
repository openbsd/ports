# $OpenBSD: Makefile,v 1.11 2013/03/11 11:41:26 espie Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
DISTNAME=	Crypt-DSA-0.13
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-PEM \
		devel/p5-Data-Buffer \
		security/p5-Digest-SHA1

.include <bsd.port.mk>
