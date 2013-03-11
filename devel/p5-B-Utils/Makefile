# $OpenBSD: Makefile,v 1.7 2013/03/11 10:50:13 espie Exp $

SHARED_ONLY=		Yes

COMMENT=		helper functions for op tree manipulation

DISTNAME=		B-Utils-0.11
REVISION=		2
CATEGORIES=		devel
USE_GROFF =		Yes

MODULES=		cpan

# perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Task-Weaken \
			devel/p5-ExtUtils-Depends

.include <bsd.port.mk>
