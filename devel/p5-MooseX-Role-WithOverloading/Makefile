# $OpenBSD: Makefile,v 1.1.1.1 2010/07/02 04:32:49 jim Exp $

SHARED_ONLY=		Yes

COMMENT=		roles which support overloading

MODULES=		cpan
DISTNAME=		MooseX-Role-WithOverloading-0.06
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-Moose \
			::devel/p5-MooseX-Types \
			::devel/p5-aliased \
			::devel/p5-namespace-autoclean \
			::devel/p5-namespace-clean
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
