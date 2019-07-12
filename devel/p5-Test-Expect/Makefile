# $OpenBSD: Makefile,v 1.11 2019/07/12 20:45:09 sthen Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Expect-0.34
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
