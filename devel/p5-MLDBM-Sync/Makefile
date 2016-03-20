# $OpenBSD: Makefile,v 1.18 2016/03/20 19:56:27 naddy Exp $

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

PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
