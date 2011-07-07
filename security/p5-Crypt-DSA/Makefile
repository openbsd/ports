# $OpenBSD: Makefile,v 1.10 2011/07/07 17:18:11 jasper Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
DISTNAME=	Crypt-DSA-0.13
REVISION=	2
CATEGORIES=	security
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-PEM \
		devel/p5-Data-Buffer \
		security/p5-Digest-SHA1

.include <bsd.port.mk>
