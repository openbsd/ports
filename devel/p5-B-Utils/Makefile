# $OpenBSD: Makefile,v 1.14 2017/09/23 10:51:07 sthen Exp $

COMMENT=		helper functions for op tree manipulation

DISTNAME =		B-Utils-0.27
CATEGORIES=		devel
REVISION =		0

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Task-Weaken \
			devel/p5-ExtUtils-Depends

.include <bsd.port.mk>
