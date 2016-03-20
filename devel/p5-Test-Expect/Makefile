# $OpenBSD: Makefile,v 1.9 2016/03/20 19:56:37 naddy Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Expect-0.33
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
