# $OpenBSD: Makefile,v 1.12 2014/06/14 23:24:57 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		roles which support overloading

MODULES=		cpan
DISTNAME=		MooseX-Role-WithOverloading-0.09
REVISION=		1
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=		devel/p5-Moose>=0.94 \
			devel/p5-MooseX-Types \
			devel/p5-aliased \
			devel/p5-namespace-autoclean \
			devel/p5-namespace-clean

.include <bsd.port.mk>
