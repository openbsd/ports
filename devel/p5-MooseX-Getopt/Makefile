# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:04 espie Exp $

COMMENT=		Moose role for processing command line options

MODULES=		cpan
DISTNAME=		MooseX-Getopt-0.29
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-Getopt-Long-Descriptive \
			devel/p5-Moose
BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	devel/p5-MooseX-ConfigFromFile \
			devel/p5-Test-Exception

.include <bsd.port.mk>
