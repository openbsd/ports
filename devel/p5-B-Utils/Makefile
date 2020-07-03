# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:40 sthen Exp $

COMMENT=		helper functions for op tree manipulation

DISTNAME =		B-Utils-0.27
CATEGORIES=		devel
REVISION =		1

MODULES=		cpan

# perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Task-Weaken \
			devel/p5-ExtUtils-Depends

.include <bsd.port.mk>
