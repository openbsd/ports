COMMENT=	twm, plus support for multiple virtual screens, etc

DISTNAME=	ctwm-4.1.0

CATEGORIES=	x11

HOMEPAGE=	https://www.ctwm.org/

# BSD-like/badly worded
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xext Xmu Xrandr Xpm Xt c jpeg

SITES=		https://www.ctwm.org/dist/

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/jpeg

CONFIGURE_ARGS=	-DETCDIR=${SYSCONFDIR} \
		-DNOMANCOMPRESS=TRUE \
		-DFORCE_PREGEN_FILES=TRUE

NO_TEST=	Yes

.include <bsd.port.mk>
