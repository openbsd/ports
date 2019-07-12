# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:43 sthen Exp $

COMMENT=	clustering algorithm for graphs

V=		09-308
DISTNAME=	mcl-${V}
PKGNAME=	mcl-${V:S,-,_,}
CATEGORIES=	math

HOMEPAGE=	http://micans.org/mcl/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}/src/

WANTLIB=	c m pthread

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/mcl/

.include <bsd.port.mk>
