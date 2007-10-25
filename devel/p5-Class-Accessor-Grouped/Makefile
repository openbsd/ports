# $OpenBSD: Makefile,v 1.1.1.1 2007/10/25 21:22:08 simon Exp $

COMMENT=        lets you build groups of accessors

MODULES=	cpan
DISTNAME=	Class-Accessor-Grouped-0.07000
CATEGORIES=     devel

# Perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	::devel/p5-MRO-Compat \
		::devel/p5-Class-Inspector
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
