COMMENT =	open-source STM32 MCU programming toolset

GH_ACCOUNT =	stlink-org
GH_PROJECT =	stlink
GH_TAGNAME =	v1.9.0

SHARED_LIBS +=  stlink                    0.0 # 0.0

CATEGORIES =	devel

# BSD
PERMIT_PACKAGE= Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 harfbuzz intl pango-1.0
WANTLIB += pangocairo-1.0 pthread usb-1.0

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
MODCMAKE_LDFLAGS = -L${LOCALBASE}/lib

LIB_DEPENDS =	devel/libusb1 \
		x11/gtk+3

post-extract:
	sed -i 's,RUNTIME_DEPENDENCY_SET stlink_deps,,g' \
		${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
