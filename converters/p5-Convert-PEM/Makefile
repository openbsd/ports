# $OpenBSD: Makefile,v 1.10 2010/12/19 23:46:55 jasper Exp $

COMMENT=	read/write access to ASN.1-encoded PEM files

DISTNAME=	Convert-PEM-0.08
CATEGORIES=	converters security
MODULES=	cpan
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	converters/p5-Convert-ASN1 \
		devel/p5-Class-ErrorHandler \
		security/p5-Crypt-DES-EDE3

.include <bsd.port.mk>
