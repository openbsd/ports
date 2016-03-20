# $OpenBSD: Makefile,v 1.13 2016/03/20 19:56:13 naddy Exp $

COMMENT=		helper functions for op tree manipulation

DISTNAME =		B-Utils-0.27
CATEGORIES=		devel

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		perl

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Task-Weaken \
			devel/p5-ExtUtils-Depends

.include <bsd.port.mk>
