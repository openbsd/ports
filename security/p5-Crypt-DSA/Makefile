# $OpenBSD: Makefile,v 1.3 2007/01/15 17:40:10 simon Exp $

COMMENT=	"DSA Signatures and Key Generation"

MODULES=	cpan
DISTNAME=	Crypt-DSA-0.13
CATEGORIES=	security

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

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
