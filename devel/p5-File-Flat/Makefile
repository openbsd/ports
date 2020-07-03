# $OpenBSD: Makefile,v 1.14 2020/07/03 21:44:53 sthen Exp $

COMMENT=	implements a flat filesystem

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	File-Flat-1.05
CATEGORIES=	devel
REVISION=	0

FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-File-Copy-Recursive \
			devel/p5-File-Remove \
			devel/p5-prefork

TEST_DEPENDS=		devel/p5-Test-ClassAPI

.include <bsd.port.mk>
