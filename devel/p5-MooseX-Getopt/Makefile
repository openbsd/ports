# $OpenBSD: Makefile,v 1.5 2012/04/07 14:28:57 sthen Exp $

COMMENT=		Moose role for processing command line options

MODULES=		cpan
DISTNAME=		MooseX-Getopt-0.37
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-Getopt-Long-Descriptive \
			devel/p5-Moose \
			devel/p5-MooseX-Role-Parameterized
REGRESS_DEPENDS=	devel/p5-MooseX-ConfigFromFile \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires \
			devel/p5-Test-Warn

.include <bsd.port.mk>
