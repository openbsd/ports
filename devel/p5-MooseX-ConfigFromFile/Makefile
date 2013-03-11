# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:19 espie Exp $

COMMENT=		Moose role for setting attributes from a config file

MODULES=		cpan
DISTNAME=		MooseX-ConfigFromFile-0.02
REVISION=		0
CATEGORIES=		devel
USE_GROFF =		Yes

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-MooseX-Types-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
