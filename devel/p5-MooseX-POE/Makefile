# $OpenBSD: Makefile,v 1.5 2011/10/29 16:48:15 jasper Exp $

COMMENT=		the Illicit Love Child of Moose and POE

DISTNAME=		MooseX-POE-0.213

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-POE

REGRESS_DEPENDS=	devel/p5-Test-Fatal \
			devel/p5-MooseX-Declare>=0.35

.include <bsd.port.mk>
