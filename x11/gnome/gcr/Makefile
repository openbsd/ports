# $OpenBSD: Makefile,v 1.70 2021/10/25 07:24:36 ajacoutot Exp $

COMMENT=		library for bits of crypto UI and parsing

GNOME_PROJECT=		gcr
GNOME_VERSION=		3.41.0

SHARED_LIBS += gck-1                     2.1 # 0.0.0
SHARED_LIBS += gcr-base-3                3.1 # 1.0.0
SHARED_LIBS += gcr-ui-3                  3.1 # 1.0.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl p11-kit pango-1.0 secret-1

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection
MODGNOME_TOOLS +=	gtk-update-icon-cache shared-mime-info vala

MODPY_RUNDEP=		No

LIB_DEPENDS=		x11/gtk+3 \
			security/libgcrypt \
			security/p11-kit

BUILD_DEPENDS=		security/gnupg
RUN_DEPENDS=		security/gnupg

CONFIGURE_ARGS=		-Dgtk_doc=false \
			-Dsystemd=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
