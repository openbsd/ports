COMMENT =	file manager and desktop icon manager

NAME =		pcmanfm-qt

WANTLIB += ${COMPILER_LIBCXX} GL LayerShellQtInterface Qt6Core
WANTLIB += Qt6DBus Qt6Gui Qt6Widgets c exif fm-qt6 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 intl m menu-cache xcb xcb-composite
WANTLIB += xcb-cursor xcb-damage xcb-dpms xcb-dri2 xcb-dri3 xcb-ewmh
WANTLIB += xcb-glx xcb-icccm xcb-image xcb-keysyms xcb-present
WANTLIB += xcb-randr xcb-record xcb-render xcb-render-util xcb-res
WANTLIB += xcb-screensaver xcb-shape xcb-shm xcb-sync xcb-util
WANTLIB += xcb-xf86dri xcb-xfixes xcb-xinerama xcb-xinput xcb-xkb
WANTLIB += xcb-xtest xcb-xv xcb-xvmc

LIB_DEPENDS =	x11/kde-plasma/layer-shell-qt \
		x11/lxqt/libfm-qt

BUILD_DEPENDS =	x11/lxqt/build-tools2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+4,-guic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
