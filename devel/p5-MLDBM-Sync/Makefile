# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:59 sthen Exp $

COMMENT=	safe concurrent access to MLDBM databases

MODULES=	cpan
PKG_ARCH=	*
VERSION=	0.30
DISTNAME=	MLDBM-Sync-${VERSION}
REVISION=	2
CATEGORIES=	devel

RUN_DEPENDS=	devel/p5-MLDBM \
		devel/p5-Tie-Cache
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE=	Yes

.include <bsd.port.mk>
