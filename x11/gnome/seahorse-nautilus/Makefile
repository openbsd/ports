COMMENT=		GnuPG extension for nautilus(1)

GNOME_PROJECT=		seahorse-nautilus
GNOME_VERSION=		3.11.92.20221209

# override gnome MODULE
COMMIT=			d59dc92f4f703b734dac82ce0c186c1751133df5
SITES=           	https://gitlab.gnome.org/GNOME/${GNOME_PROJECT}/-/archive/${COMMIT}/
WRKDIST=                ${WRKDIR}/${GNOME_PROJECT}-${COMMIT}
EXTRACT_SUFX=           .tar.gz

CATEGORIES=		security

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += c cryptui dbus-glib-1 gcr-base-3 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gpgme gtk-3 intl nautilus-extension notify

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils

LIB_DEPENDS=		x11/gnome/gcr \
			x11/gnome/nautilus \
			x11/gnome/libcryptui

BUILD_DEPENDS +=	security/gnupg
RUN_DEPENDS +=		security/gnupg

.include <bsd.port.mk>
