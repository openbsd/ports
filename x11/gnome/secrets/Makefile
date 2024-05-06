COMMENT=		GNOME password manager (Keepass)

DIST_TUPLE=		gnome World secrets 8.0 .
REVISION=		1

CATEGORIES=		security

# GPLv3
PERMIT_PACKAGE=		Yes

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-validators${MODPY_FLAVOR} \
			security/py-pykeepass${MODPY_FLAVOR} \
			security/py-pyotp${MODPY_FLAVOR} \
			security/py-zxcvbn${MODPY_FLAVOR} \
			x11/gnome/libadwaita \
			x11/gtk+4

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			devel/py-validators${MODPY_FLAVOR} \
			security/py-pykeepass${MODPY_FLAVOR} \
			security/py-pyotp${MODPY_FLAVOR} \
			security/py-zxcvbn${MODPY_FLAVOR} \
			x11/gnome/libadwaita \
			x11/gtk+4

MODGNOME_TOOLS= 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache shared-mime-info

.include <bsd.port.mk>
