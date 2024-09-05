COMMENT-main=		GIO-style async APIs for most Flatpak portals
COMMENT-gtk3=		GTK3 backend for libportal
COMMENT-gtk4=		GTK4 backend for libportal
COMMENT-qt5=		Qt5 backend for libportal
COMMENT-qt6=		Qt6 backend for libportal

V=			0.8.1
DISTNAME=		libportal-${V}

PKGNAME-gtk3=		libportal-gtk3-${V}
PKGNAME-gtk4=		libportal-gtk4-${V}
PKGNAME-qt5=		libportal-qt5-${V}
PKGNAME-qt6=		libportal-qt6-${V}

SHARED_LIBS += portal                    0.1 # 1.0.0
SHARED_LIBS += portal-gtk3               0.0 # 1.0.0
SHARED_LIBS += portal-gtk4               0.0 # 1.0.0
SHARED_LIBS += portal-qt5                0.0 # 1.0.0
SHARED_LIBS += portal-qt6                0.0 # 1.0.0

CATEGORIES=		devel

HOMEPAGE=		https://libportal.org/

# LGPLv3
PERMIT_PACKAGE=		Yes

SITES=			https://github.com/flatpak/libportal/releases/download/${V}/
EXTRACT_SUFX=		.tar.xz

# C++
COMPILER=		base-clang ports-gcc

MULTI_PACKAGES=		-main -gtk3 -gtk4 -qt5 -qt6

WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0

WANTLIB-gtk3 += gdk-3 glib-2.0 gobject-2.0 gtk-3

WANTLIB-gtk4 += glib-2.0 gobject-2.0 gtk-4

WANTLIB-qt5 += Qt5Core Qt5Gui Qt5X11Extras c++abi gio-2.0 glib-2.0
WANTLIB-qt5 += gobject-2.0 portal

WANTLIB-qt6 += ${COMPILER_LIBCXX} Qt6Core Qt6Gui gio-2.0 glib-2.0
WANTLIB-qt6 += gobject-2.0 portal

MODULES=		devel/meson \
			x11/gnome

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

LIB_DEPENDS-main=	devel/glib2

LIB_DEPENDS-gtk3=	x11/gtk+3

LIB_DEPENDS-gtk4=	x11/gtk+4

LIB_DEPENDS-qt5=	${BASE_PKGPATH},-main=${V} \
			x11/qt5/qtx11extras

LIB_DEPENDS-qt6=	${BASE_PKGPATH},-main=${V} \
			x11/qt6/qtbase

RUN_DEPENDS-gtk3=	${BASE_PKGPATH},-main=${V}

RUN_DEPENDS-gtk4=	${BASE_PKGPATH},-main=${V}

.include <bsd.port.mk>
