# $OpenBSD: Makefile,v 1.5 2010/03/22 13:54:21 sturm Exp $

COMMENT=	DSA Signatures and Key Generation

MODULES=	cpan
DISTNAME=	Crypt-DSA-0.13
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	security

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
