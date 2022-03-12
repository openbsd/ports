COMMENT=		GNOME password manager (Keepass)

GNOME_PROJECT=		secrets
GNOME_VERSION=		6.2

# override gnome MODULE
MASTER_SITES=		https://gitlab.gnome.org/World/secrets/-/archive/${GNOME_VERSION}/
EXTRACT_SUFX=		.tar.gz

CATEGORIES=		security

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		security/py-pykeepass${MODPY_FLAVOR} \
			security/py-pyotp${MODPY_FLAVOR} \
			x11/gnome/libadwaita \
			x11/gtk+4

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			security/py-pykeepass${MODPY_FLAVOR} \
			security/py-pyotp${MODPY_FLAVOR} \
			x11/gnome/libadwaita \
			x11/gtk+4

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache shared-mime-info

.include <bsd.port.mk>
