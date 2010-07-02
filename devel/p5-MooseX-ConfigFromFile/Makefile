# $OpenBSD: Makefile,v 1.1.1.1 2010/07/02 04:27:00 jim Exp $

COMMENT=		Moose role for setting attributes from a config file

MODULES=		cpan
DISTNAME=		MooseX-ConfigFromFile-0.02
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-Moose \
			::devel/p5-MooseX-Types-Path-Class
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
