COMMENT=	lightweight C library for loading & wrapping LV2 plugin UIs

DISTNAME=	suil-0.10.20

SHARED_LIBS += suil-0                    0.0 # 0.10.20

CATEGORIES=	audio x11

HOMEPAGE=	https://drobilla.net/software/suil.html

# ISC
PERMIT_PACKAGE= Yes

MODULES=	devel/meson

SITES=		https://download.drobilla.net/
EXTRACT_SUFX=	.tar.xz

BUILD_DEPENDS=	audio/lv2

CONFIGURE_ARGS=	-Dgtk2=disabled

# needs gtk+2
CONFIGURE_ARGS +=	-Dx11=disabled

# subpackage?
CONFIGURE_ARGS +=	-Dgtk3=disabled \
			-Dqt5=disabled

# needs sphinxygen
CONFIGURE_ARGS +=	-Ddocs=disabled

.include <bsd.port.mk>
