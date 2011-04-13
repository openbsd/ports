# $OpenBSD: Makefile,v 1.5 2011/04/13 18:46:46 jasper Exp $

COMMENT=		automatically apply roles at object creation time 

DISTNAME=		MooseX-Traits-0.11

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

REGRESS_DEPENDS=	devel/p5-Test-Exception \
			devel/p5-MooseX-Role-Parameterized # for author tests

.include <bsd.port.mk>
