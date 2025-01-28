COMMENT=		people aggregation library

GNOME_PROJECT=		folks
GNOME_VERSION=		0.15.9
REVISION=		4

# see BACKEND_DIR in config.h
API_V=			26

SHARED_LIBS += folks                     5.6 # 26.0.0
SHARED_LIBS += folks-dummy               0.0 # 26.0.0
SHARED_LIBS += folks-eds                 1.3 # 26.0.0

SUBST_VARS=		API_V

WANTLIB += c ebook-1.2 ebook-contacts-1.2 edataserver-1.2 gee-0.8
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl readline
WANTLIB += xml2

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

DEBUG_PACKAGES=		${BUILD_PACKAGES}

MODPY_ADJ_FILES=	tests/tools/manager-file.py

LIB_DEPENDS=		databases/evolution-data-server \
			devel/libgee

TEST_DEPENDS=		${FULLPKGNAME}:${BASE_PKGPATH}

MODGNOME_TOOLS=		gobject-introspection vala

CONFIGURE_STYLE=	meson

# matches gnome-build-meta;
# https://gitlab.gnome.org/GNOME/gnome-build-meta/-/commit/69e9ccc898ae1482fbc79a42491f364fd4fb6160
CONFIGURE_ARGS += 	-Dtelepathy_backend=false

# requires libofono (not ported)
CONFIGURE_ARGS += 	-Dofono_backend=false

# no Bluez stack on OpenBSD
CONFIGURE_ARGS +=	-Dbluez_backend=false

.include <bsd.port.mk>
