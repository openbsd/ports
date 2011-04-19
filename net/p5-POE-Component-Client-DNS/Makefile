# $OpenBSD: Makefile,v 1.12 2011/04/19 20:33:58 jasper Exp $

COMMENT=	DNS module for the Perl Object Environment

MODULES=	cpan
DISTNAME=	POE-Component-Client-DNS-1.051
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-DNS
BUILD_DEPENDS=	${RUN_DEPENDS}

REGRESS_DEPENDS=devel/p5-Test-NoWarnings

.include <bsd.port.mk>
