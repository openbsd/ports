# $OpenBSD: Makefile,v 1.13 2019/07/12 20:44:54 sthen Exp $

COMMENT=	implements a flat filesystem

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	File-Flat-1.05
CATEGORIES=	devel

FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-File-Copy-Recursive \
			devel/p5-File-Remove \
			devel/p5-prefork

TEST_DEPENDS=		devel/p5-Test-ClassAPI

.include <bsd.port.mk>
