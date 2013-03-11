# $OpenBSD: Makefile,v 1.12 2013/03/11 11:23:55 espie Exp $

COMMENT=	clustering algorithm for graphs

V=		09-308
DISTNAME=	mcl-${V}
PKGNAME=	mcl-${V:S,-,_,}
CATEGORIES=	math

HOMEPAGE=	http://micans.org/mcl/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}/src/

WANTLIB=	c m pthread

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/mcl/

.include <bsd.port.mk>
