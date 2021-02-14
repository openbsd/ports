# $OpenBSD: Makefile,v 1.14 2021/02/14 03:19:26 daniel Exp $

COMMENT=	clustering algorithm for graphs

V=		14-137
DISTNAME=	mcl-${V}
PKGNAME=	mcl-${V:S,-,_,}
CATEGORIES=	math

HOMEPAGE=	http://micans.org/mcl/

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://micans.org/mcl/src/

WANTLIB=	c m pthread

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/mcl/

# 20+ duplicate symbols
CFLAGS+=	-fcommon

.include <bsd.port.mk>
