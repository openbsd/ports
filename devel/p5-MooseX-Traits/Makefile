# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:04 espie Exp $

COMMENT=		automatically apply roles at object creation time 

DISTNAME=		MooseX-Traits-0.07

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-Moose \
			::devel/p5-Sub-Exporter \
			::devel/p5-namespace-autoclean
.include <bsd.port.mk>
