# $OpenBSD: Makefile,v 1.7 2013/10/11 23:49:18 naddy Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
DISTNAME=	Test-Expect-0.31
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
