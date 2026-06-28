COMMENT=		service interface for assistive technologies

GNOME_PROJECT=		at-spi2-core
GNOME_VERSION=		2.60.5

SHARED_LIBS += atk-1.0                   21810.5 # 0.26014.1
SHARED_LIBS += atspi                     1.5 # 0.0.1
SHARED_LIBS += atk-bridge-2.0            0.5 # 0.0.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 XRes Xi Xtst c dbus-1 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 intl

MODULES=		devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection
MODPY_RUNDEP=		No

BUILD_DEPENDS=		textproc/libxml

RUN_DEPENDS=		textproc/libxml

LIB_DEPENDS=		devel/glib2 \
			x11/dbus

CONFIGURE_ARGS=		-Ddefault_bus=dbus-daemon

# connects to DBus
TEST_IS_INTERACTIVE=	x11

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/at-spi2-core
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/at-spi2-core

.include <bsd.port.mk>
