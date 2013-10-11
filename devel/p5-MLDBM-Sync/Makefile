# $OpenBSD: Makefile,v 1.17 2013/10/11 23:48:57 naddy Exp $

COMMENT=	safe concurrent access to MLDBM databases

MODULES=	cpan
VERSION=	0.30
DISTNAME=	MLDBM-Sync-${VERSION}
REVISION=	2
CATEGORIES=	devel

RUN_DEPENDS=	devel/p5-MLDBM \
		devel/p5-Tie-Cache
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
