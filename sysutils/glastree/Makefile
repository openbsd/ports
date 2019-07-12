# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:43 sthen Exp $

COMMENT=	poor man's daily snapshot

DISTNAME=	glastree-1.04
REVISION=	0

HOMEPAGE=	http://www.igmus.org/code/

MASTER_SITES=	http://www.igmus.org/files/

CATEGORIES=	sysutils

# Public domain
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Date-Calc

BUILD_DEPENDS=	${RUN_DEPENDS}

TEST_TARGET=	test

.include <bsd.port.mk>
