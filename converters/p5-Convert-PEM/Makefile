# $OpenBSD: Makefile,v 1.5 2010/03/22 13:54:21 sturm Exp $

COMMENT=	read/write access to ASN.1-encoded PEM files

DISTNAME=	Convert-PEM-0.07
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	converters security
MODULES=	cpan

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::converters/p5-Convert-ASN1 \
		::devel/p5-Class-ErrorHandler \
		::security/p5-Crypt-DES-EDE3

.include <bsd.port.mk>
