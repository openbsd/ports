# $OpenBSD: Makefile,v 1.5 2013/03/11 11:41:30 espie Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>
