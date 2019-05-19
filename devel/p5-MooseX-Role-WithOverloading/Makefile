# $OpenBSD: Makefile,v 1.16 2019/05/19 19:58:51 danj Exp $

COMMENT=		roles which support overloading

MODULES=		cpan
DISTNAME=		MooseX-Role-WithOverloading-0.17
CATEGORIES=		devel
REVISION=		0

FIX_EXTRACT_PERMISSIONS =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

RUN_DEPENDS=		devel/p5-Moose>=0.94 \
			devel/p5-MooseX-Types \
			devel/p5-aliased \
			devel/p5-namespace-autoclean \
			devel/p5-namespace-clean

.include <bsd.port.mk>
