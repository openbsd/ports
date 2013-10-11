# $OpenBSD: Makefile,v 1.6 2013/10/11 23:50:57 naddy Exp $

COMMENT=	poor man's daily snapshot

DISTNAME=	glastree-1.04
REVISION=	0

HOMEPAGE=	http://www.igmus.org/code/

MASTER_SITES=	http://www.igmus.org/files/

CATEGORIES=	sysutils

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Date-Calc

BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_TARGET=	test

.include <bsd.port.mk>
