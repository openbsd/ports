COMMENT =	flexible input method framework

DISTNAME =	fcitx5-5.0.23
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}
REVISION =	0

SHARED_LIBS +=  Fcitx5Config			0.0 # 0.0
SHARED_LIBS +=  Fcitx5Core			0.0 # 0.0
SHARED_LIBS +=  Fcitx5Utils			0.0 # 0.0

CATEGORIES =	inputmethods chinese japanese korean

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cairo dbus-1 enchant-2 event_core
WANTLIB += execinfo expat gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 harfbuzz intl json-c kvm m pango-1.0
WANTLIB += pangocairo-1.0 pthread uuid xcb xcb-ewmh xcb-icccm
WANTLIB += xcb-imdkit xcb-keysyms xcb-randr xcb-render
WANTLIB += xcb-shape xcb-util xcb-xfixes xcb-xinerama xcb-xkb
WANTLIB += xkbcommon xkbcommon-x11 xkbfile z

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5/
SITES.data =	https://download.fcitx-im.org/data/
DISTFILES.data= en_dict-20121020.tar.gz

DIST_SUBDIR =	fcitx

MODULES =	devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/iso-codes \
			devel/fmt

# bash: for fcitx5-diagnose.sh
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			shells/bash \
			x11/gtk+4,-guic

LIB_DEPENDS =		devel/harfbuzz,-main \
			devel/json-c \
			devel/libevent2 \
			devel/pango \
			graphics/gdk-pixbuf2 \
			inputmethods/xcb-imdkit \
			sysutils/e2fsprogs \
			textproc/enchant2 \
			x11/dbus \
			x11/xkbcommon

CONFIGURE_ARGS =	-DENABLE_WAYLAND=OFF \
			-DCMAKE_INSTALL_SYSCONFDIR=${PREFIX}/share/examples

CFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include

post-patch:
	cp ${FULLDISTDIR}/en_dict-20121020.tar.gz \
		${WRKSRC}/src/modules/spell/

.include <bsd.port.mk>
