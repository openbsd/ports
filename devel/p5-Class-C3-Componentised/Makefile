# $OpenBSD: Makefile,v 1.1.1.1 2007/10/25 21:22:22 simon Exp $

COMMENT=        load mix-ins or components to your C3-based class

MODULES=	cpan
DISTNAME=	Class-C3-Componentised-1.0001
CATEGORIES=     devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-Class-C3 \
		::devel/p5-Class-Inspector
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
