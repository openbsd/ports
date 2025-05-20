COMMENT=	Thunar media tags plugin

XFCE_VERSION=	0.6.0
THUNAR_PLUGIN=	thunar-media-tags-plugin

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	x11/xfce4 devel/meson

COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	x11/xfce4/thunar \
		audio/taglib

WANTLIB += atk-1.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl tag_c
WANTLIB += thunarx-3

.include <bsd.port.mk>
