# $OpenBSD: Makefile,v 1.1.1.1 2010/07/02 04:35:49 jim Exp $

COMMENT=		library of commonly used type constraints

MODULES=		cpan
DISTNAME=		MooseX-Types-Common-0.001002
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-Moose \
			::devel/p5-MooseX-Types
REGRESS_DEPENDS=	::devel/p5-Test-Exception \
			::sysutils/p5-Capture-Tiny

.include <bsd.port.mk>
