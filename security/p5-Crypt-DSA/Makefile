# $OpenBSD: Makefile,v 1.7 2010/10/18 21:41:46 espie Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
DISTNAME=	Crypt-DSA-0.13
REVISION=	0
CATEGORIES=	security
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::converters/p5-Convert-PEM \
		::devel/p5-Data-Buffer \
		::security/p5-Digest-SHA1

.include <bsd.port.mk>
