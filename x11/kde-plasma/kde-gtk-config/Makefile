COMMENT =	GTK2 and GTK3 configurator for KDE
DISTNAME =	kde-gtk-config-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} GL KF6ColorScheme KF6ConfigCore
WANTLIB += KF6CoreAddons KF6DBusAddons KF6GuiAddons KF6WindowSystem
WANTLIB += Qt6Core Qt6DBus Qt6Gui Qt6Svg X11 atk-1.0 c cairo cairo-gobject
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += harfbuzz intl kdecorations2 kdecorations2private m
WANTLIB += pango-1.0 pangocairo-1.0

BUILD_DEPENDS =	www/libsass \
		www/sass \
		x11/xsettingsd \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		x11/xsettingsd

LIB_DEPENDS =	devel/gettext,-runtime \
		devel/glib2 \
		devel/harfbuzz \
		devel/kf6/kcolorscheme \
		devel/kf6/kconfig \
		devel/kf6/kcoreaddons \
		devel/kf6/kdbusaddons \
		devel/kf6/kguiaddons \
		devel/kf6/kwindowsystem \
		devel/pango \
		graphics/cairo \
		graphics/gdk-pixbuf2 \
		x11/gnome/at-spi2-core \
		x11/gtk+3 \
		x11/kde-plasma/kdecoration>=${VERSION} \
		x11/qt6/qtsvg

.include <bsd.port.mk>
