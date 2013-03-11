# $OpenBSD: Makefile,v 1.16 2013/03/11 10:50:18 espie Exp $

COMMENT=	safe concurrent access to MLDBM databases

MODULES=	cpan
VERSION=	0.30
DISTNAME=	MLDBM-Sync-${VERSION}
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-MLDBM \
		devel/p5-Tie-Cache
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
