COMMENT =	helper library for RESTful services

GNOME_VERSION =	0.9.1
GNOME_PROJECT =	rest
PKGNAME =	librest1-${GNOME_VERSION}

SHARED_LIBS += rest-1.0                  0.0 # 0.0.0
SHARED_LIBS += rest-extras-1.0           0.0 # 0.0.0

CATEGORIES =	net devel

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += adwaita-1 c gio-2.0 glib-2.0 gobject-2.0 gtk-4 gtksourceview-5
WANTLIB += intl json-glib-1.0 soup-3.0 xml2

MODULES =		devel/meson \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils gi-docgen gobject-introspection

LIB_DEPENDS =		devel/json-glib \
			devel/libsoup3 \
			x11/gnome/libadwaita \
			x11/gtksourceview5

CONFIGURE_ARGS =	-Dca_certificates=true \
			-Dca_certificates_path=/etc/ssl/cert.pem

# needed for `make test'
PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
