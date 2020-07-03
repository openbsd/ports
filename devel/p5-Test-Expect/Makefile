# $OpenBSD: Makefile,v 1.12 2020/07/03 21:45:13 sthen Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Expect-0.34
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
