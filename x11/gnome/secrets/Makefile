COMMENT=		GNOME password manager (Keepass)

DIST_TUPLE=		gnome World secrets 8.0 .
REVISION=		4

CATEGORIES=		security

HOMEPAGE=		https://apps.gnome.org/Secrets/

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-validators \
			security/py-pykeepass \
			security/py-pyotp \
			security/py-zxcvbn \
			x11/gnome/libadwaita \
			x11/gtk+4

RUN_DEPENDS=		devel/py-gobject3 \
			devel/py-validators \
			security/py-pykeepass \
			security/py-pyotp \
			security/py-zxcvbn \
			x11/gnome/libadwaita \
			x11/gtk+4

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache shared-mime-info

.include <bsd.port.mk>
