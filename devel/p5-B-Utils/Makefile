# $OpenBSD: Makefile,v 1.9 2014/04/29 06:13:28 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		helper functions for op tree manipulation

DISTNAME=		B-Utils-0.25
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Task-Weaken \
			devel/p5-ExtUtils-Depends

.include <bsd.port.mk>
