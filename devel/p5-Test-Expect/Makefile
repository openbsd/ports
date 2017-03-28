# $OpenBSD: Makefile,v 1.10 2017/03/28 09:06:02 benoit Exp $

COMMENT=	automated driving and testing of terminal-based programs

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Test-Expect-0.34
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Accessor-Chained \
		devel/p5-Expect-Simple

.include <bsd.port.mk>
