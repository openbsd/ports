COMMENT=		library for bits of crypto UI and parsing

GNOME_PROJECT=		gcr
GNOME_VERSION=		4.2.1
PKGNAME=		${GNOME_PROJECT}4-${GNOME_VERSION}

SHARED_LIBS += gck-2                     0.1 # 2.1.0
SHARED_LIBS += gcr-4                     0.1 # 4.1.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c gcrypt gio-2.0 glib-2.0 gobject-2.0 gtk-4 intl p11-kit
WANTLIB += pango-1.0 secret-1

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		gi-docgen gobject-introspection vala

MODPY_RUNDEP=		No

LIB_DEPENDS=		security/libgcrypt \
			security/p11-kit \
			x11/gtk+4

BUILD_DEPENDS=		security/gnupg

RUN_DEPENDS=		security/gnupg

CONFIGURE_ARGS=		-Dsystemd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
