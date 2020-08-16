# $OpenBSD: Makefile,v 1.15 2020/08/16 19:02:48 afresh1 Exp $

COMMENT=	implements a flat filesystem

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	File-Flat-1.06
CATEGORIES=	devel

FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		devel/p5-File-Copy-Recursive \
			devel/p5-File-Remove \
			devel/p5-prefork

TEST_DEPENDS=		devel/p5-Test-ClassAPI

.include <bsd.port.mk>
