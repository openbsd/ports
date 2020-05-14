# $OpenBSD: Makefile,v 1.64 2020/05/14 14:58:33 ajacoutot Exp $

COMMENT=		library for bits of crypto UI and parsing

GNOME_PROJECT=		gcr
GNOME_VERSION=		3.36.0

SHARED_LIBS += gck-1                     2.1 # 0.0.0
SHARED_LIBS += gcr-base-3                3.1 # 1.0.0
SHARED_LIBS += gcr-ui-3                  3.1 # 1.0.0

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cairo gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl p11-kit pango-1.0

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS +=	desktop-file-utils gobject-introspection
MODGNOME_TOOLS +=	gtk-update-icon-cache shared-mime-info vala

MODPY_RUNDEP=		No
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

LIB_DEPENDS=		x11/gtk+3 \
			security/libgcrypt \
			security/p11-kit

BUILD_DEPENDS=		gnupg->=2:security/gnupg2
RUN_DEPENDS=		gnupg->=2:security/gnupg2

CONFIGURE_ARGS=		-Dgtk_doc=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
