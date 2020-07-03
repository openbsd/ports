# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:59 sthen Exp $

COMMENT=	safe concurrent access to MLDBM databases

MODULES=	cpan
PKG_ARCH=	*
VERSION=	0.30
DISTNAME=	MLDBM-Sync-${VERSION}
REVISION=	3
CATEGORIES=	devel

RUN_DEPENDS=	devel/p5-MLDBM \
		devel/p5-Tie-Cache
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
