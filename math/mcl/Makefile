# $OpenBSD: Makefile,v 1.15 2021/09/15 21:55:07 tb Exp $

COMMENT=	clustering algorithm for graphs

V=		14-137
DISTNAME=	mcl-${V}
PKGNAME=	mcl-${V:S,-,_,}
REVISION=	0

CATEGORIES=	math

HOMEPAGE=	https://micans.org/mcl/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://micans.org/mcl/src/

WANTLIB=	c m pthread

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/mcl/

.include <bsd.port.mk>
