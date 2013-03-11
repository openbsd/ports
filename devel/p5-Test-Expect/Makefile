# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:22 espie Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
DISTNAME=	Test-Expect-0.31
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
