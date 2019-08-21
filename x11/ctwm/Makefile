# $OpenBSD: Makefile,v 1.29 2019/08/21 19:30:52 cwen Exp $

COMMENT=	twm, plus support for multiple virtual screens, etc

DISTNAME=	ctwm-4.0.3

CATEGORIES=	x11

HOMEPAGE=	https://www.ctwm.org/

# BSD-like/badly worded
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xpm Xt c jpeg

MASTER_SITES=	https://www.ctwm.org/dist/

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/jpeg

CONFIGURE_ARGS=	-DETCDIR=${SYSCONFDIR} \
		-DNOMANCOMPRESS=TRUE \
		-DFORCE_PREGEN_FILES=TRUE

NO_TEST=	Yes

.include <bsd.port.mk>
