# $OpenBSD: Makefile,v 1.27 2018/08/29 21:06:43 bcallah Exp $

COMMENT=	twm, plus support for multiple virtual screens, etc

DISTNAME=	ctwm-4.0.2

CATEGORIES=	x11

HOMEPAGE=	https://www.ctwm.org/

# BSD-like/badly worded
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xpm Xt c jpeg

MASTER_SITES=	https://www.ctwm.org/dist/

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/jpeg

CONFIGURE_ARGS=	-DETCDIR=${SYSCONFDIR} \
		-DNOMANCOMPRESS=TRUE \
		-DFORCE_PREGEN_FILES=TRUE

NO_TEST=	Yes

.include <bsd.port.mk>
