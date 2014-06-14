# $OpenBSD: Makefile,v 1.10 2014/06/14 23:24:54 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		helper functions for op tree manipulation

DISTNAME=		B-Utils-0.25
CATEGORIES=		devel
REVISION=		0

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Task-Weaken \
			devel/p5-ExtUtils-Depends

.include <bsd.port.mk>
