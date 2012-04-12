# $OpenBSD: Makefile,v 1.1.1.1 2012/04/12 13:53:03 gsoares Exp $

COMMENT=	interface to the ISAAC PRNG algorithm

MODULES=	cpan
DISTNAME=	Math-Random-ISAAC-1.004
CATEGORIES=	math

MAINTAINER=	David Hill <dhill@mindcry.org>

# CC0 License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	devel/p5-Test-LeakTrace \
			devel/p5-Test-NoWarnings

.include <bsd.port.mk>
