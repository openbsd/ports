# $OpenBSD: Makefile,v 1.20 2019/07/12 20:43:30 sthen Exp $

COMMENT=	extract files from InstallShield CAB archives

GH_ACCOUNT=	twogood
GH_PROJECT=	unshield
GH_TAGNAME=	1.4.3

CATEGORIES=	archivers

SHARED_LIBS+=	unshield	2.1

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB=	c crypto ssl z

MODULES =	devel/cmake

NO_TEST=	Yes

.include <bsd.port.mk>
