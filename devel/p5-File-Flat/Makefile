# $OpenBSD: Makefile,v 1.12 2019/05/05 22:18:49 cwen Exp $

COMMENT=	implements a flat filesystem

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	File-Flat-1.05
CATEGORIES=	devel

FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-File-Copy-Recursive \
			devel/p5-File-Remove \
			devel/p5-prefork

TEST_DEPENDS=		devel/p5-Test-ClassAPI

.include <bsd.port.mk>
