# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:23 naddy Exp $

COMMENT=	implements a flat filesystem

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	File-Flat-1.04
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-prefork \
			devel/p5-File-Copy-Recursive \
			devel/p5-File-Remove
BUILD_DEPENDS=		${RUN_DEPENDS}
TEST_DEPENDS=	devel/p5-Test-ClassAPI

.include <bsd.port.mk>
