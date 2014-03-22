# $OpenBSD: Makefile,v 1.12 2014/03/22 10:22:36 jasper Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
DISTNAME=	Crypt-DSA-1.17
CATEGORIES=	security
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-PEM \
		devel/p5-Data-Buffer \
		sysutils/p5-File-Which \
		security/p5-Digest-SHA1

.include <bsd.port.mk>
