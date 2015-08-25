# $OpenBSD: Makefile,v 1.8 2015/08/25 16:21:13 benoit Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
DISTNAME =	Test-Expect-0.33
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
