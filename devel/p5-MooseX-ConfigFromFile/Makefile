# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:04 espie Exp $

COMMENT=		Moose role for setting attributes from a config file

MODULES=		cpan
DISTNAME=		MooseX-ConfigFromFile-0.02
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
