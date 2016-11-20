# $OpenBSD: Makefile,v 1.17 2016/11/20 08:26:19 jsg Exp $

COMMENT=	extract files from InstallShield CAB archives

GH_ACCOUNT=	twogood
GH_PROJECT=	unshield
GH_TAGNAME=	1.3

CATEGORIES=	archivers

SHARED_LIBS+=	unshield	2.1	# 1.3

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto ssl z

MODULES =	devel/cmake

NO_TEST=	Yes

.include <bsd.port.mk>
