# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:03 espie Exp $

COMMENT=		the Illicit Love Child of Moose and POE

DISTNAME=		MooseX-POE-0.205

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-MooseX-Async \
			::devel/p5-MooseX-Declare \
			::devel/p5-POE

.include <bsd.port.mk>
