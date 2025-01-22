COMMENT =	GTK IM module for fcitx5

DISTNAME =	fcitx5-gtk-5.1.3
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

SHARED_LIBS =	Fcitx5GClient			0.0 # 0.0

CATEGORIES =	inputmethods

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 atk-1.0 c cairo cairo-gobject
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 graphene-1.0
WANTLIB += gtk-3 gtk-4 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += vulkan xkbcommon

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-gtk/
EXTRACT_SUFX =	.tar.zst

MODULES =	devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx \
			devel/gobject-introspection \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/fcitx \
			misc/shared-mime-info

LIB_DEPENDS =		devel/harfbuzz,-main \
			devel/pango \
			graphics/gdk-pixbuf2 \
			graphics/graphene \
			x11/gnome/at-spi2-core \
			x11/gtk+4,-main \
			x11/gtk+3,-main \
			x11/xkbcommon

CONFIGURE_ARGS =	-DENABLE_GTK2_IM_MODULE=OFF \
			-DENABLE_GTK3_IM_MODULE=ON \
			-DENABLE_GTK4_IM_MODULE=ON \
                        -DCMAKE_CXX_FLAGS="-I${X11BASE}/include \
                                           -I${LOCALBASE}/include"

# ninja: error: unknown target 'test'
NO_TEST =		Yes

.include <bsd.port.mk>
